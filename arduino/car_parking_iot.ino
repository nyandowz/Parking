#include <ESP8266WiFi.h>
#include <FirebaseESP8266.h>

#define WIFI_SSID "Groot"
#define WIFI_PASSWORD "grootgroot"
#define FIREBASE_HOST "smart-car-parking-iot-c531f-default-rtdb.firebaseio.com"
#define FIREBASE_AUTH "5PGmOzFxsHLXKY0TXWkfB2otDQHiJ3c8qWhjvkRK"

FirebaseData firebaseData;
#define A1 D0
#define A2 D1
#define A3 D2
#define A4 D3

void setup() {
  Serial.begin(9600);
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.println("Connecting to WiFi ");
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print("-");
  }
  Serial.println("");
  Serial.println("Wifi Connected !😊 ");
  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
  Serial.println("Firebase Connected !😊 ");
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
  pinMode(A4, INPUT);
}

void loop() {
  int slot1 = digitalRead(A1);
  int slot2 = digitalRead(A2);
  int slot3 = digitalRead(A3);
  int slot4 = digitalRead(A4);
 
  if(slot1==0)
  {
    Serial.println("Slot : A-1 - Car parked 👌");
    Firebase.setBool(firebaseData, "-NRdY57houxuL83j7cok/isParked", true);
  }else{
    Firebase.setBool(firebaseData, "-NRdY57houxuL83j7cok/isParked", false);
    Firebase.setBool(firebaseData, "-NRdY57houxuL83j7cok/booked", false);
    Serial.println("Slot : A-1 - Car not parked");
  }
  if(slot2==0)
  {
    Serial.println("Slot : A-2 - Car parked 👌");
    Firebase.setBool(firebaseData, "-NRdYRojJXhw3_aixhnM/isParked", true);
  }else{
    Firebase.setBool(firebaseData, "-NRdYRojJXhw3_aixhnM/isParked", false);
    Firebase.setBool(firebaseData, "-NRdYRojJXhw3_aixhnM/booked", false);
    Serial.println("Slot : A-2 - Car not parked");
  }
  if(slot3==0)
  {
    Serial.println("Slot : A-3 - Car parked 👌");
    Firebase.setBool(firebaseData, "-NRdYTO7yp_MbMxjhic3/isParked", true);
  }else{
    Firebase.setBool(firebaseData, "-NRdYTO7yp_MbMxjhic3/isParked", false);
    Firebase.setBool(firebaseData, "-NRdYTO7yp_MbMxjhic3/booked", false);
    Serial.println("Slot : A-3 - Car not parked");
  }
  if(slot4==0)
  {
    Serial.println("Slot : A-4 - Car parked 👌");
    Firebase.setBool(firebaseData, "-NRdYWXOcd8oWymDLroj/isParked", true);
  }else{
    Firebase.setBool(firebaseData, "-NRdYWXOcd8oWymDLroj/isParked", false);
    Firebase.setBool(firebaseData, "-NRdYWXOcd8oWymDLroj/booked", false);
    Serial.println("Slot : A-4 - Car not parked");
  }

  delay(500);
}
