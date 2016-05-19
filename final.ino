#include <DHT.h>
#include <Ethernet.h>
#include <SPI.h>

byte mac[] = { 0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x01 }; // RESERVED MAC ADDRESS
EthernetClient client;

#define DHTPIN 2 // SENSOR PIN
#define DHTTYPE DHT22 // SENSOR TYPE - THE ADAFRUIT LIBRARY OFFERS SUPPORT FOR MORE MODELS
DHT dht(DHTPIN, DHTTYPE);

long previousMillis = 0;
unsigned long currentMillis = 0;
long interval = 250000; // READING INTERVAL

int t = 0;	// TEMPERATURE VAR
int h = 0;	// HUMIDITY VAR
int LDR = 1;  //PHOTORESISTOR PIN
String data;

void setup() { 
	Serial.begin(115200);
	if (Ethernet.begin(mac) == 0) {
		Serial.println("Failed to configure Ethernet using DHCP"); 
	}
	dht.begin(); 
	delay(10000); // GIVE THE SENSOR SOME TIME TO START
  pinMode(LDR, INPUT);
	h = (int) dht.readHumidity(); 
	t = (int) dht.readTemperature(); 
	data = "";
}

void loop(){

	currentMillis = millis();
	if(currentMillis - previousMillis > interval) { // READ ONLY ONCE PER INTERVAL
		previousMillis = currentMillis;
		h = (int) dht.readHumidity();
		t = (int) dht.readTemperature();
	}
  int l = analogRead(LDR);
  Serial.println(h);
  Serial.println(t);
  Serial.println(l);
	data = "temp1=" + String(t) + "&hum1=" + String(h) + "&lum1=" + String(l);

	if (client.connect("192.168.1.103",80)) { // REPLACE WITH YOUR SERVER ADDRESS
		client.println("POST /add.php HTTP/1.1"); 
		client.println("Host: 192.168.1.103"); // SERVER ADDRESS HERE TOO
		client.println("Content-Type: application/x-www-form-urlencoded"); 
		client.print("Content-Length: "); 
		client.println(data.length()); 
		client.println(); 
		client.print(data); 
	} 

	if (client.connected()) { 
		client.stop();	// DISCONNECT FROM THE SERVER
	}

	delay(3000); // WAIT FIVE MINUTES BEFORE SENDING AGAIN
}



