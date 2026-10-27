.class public Lcom/xiaopeng/speech/protocol/event/AutoParkingEvent;
.super Ljava/lang/Object;
.source "AutoParkingEvent.java"


# static fields
.field public static final ACTIVATE:Ljava/lang/String; = "command://autoparking.activate"

.field public static final CONTINUE_FIND_PARKING_SPACE:Ljava/lang/String; = "command://autoparking.find.parking.space.continue"

.field public static final EXIT:Ljava/lang/String; = "command://autoparking.exit"

.field public static final EXIT_FIND_PARKING_SPACE:Ljava/lang/String; = "command://autoparking.find.parking.space.exit"

.field public static final LEARNING_MEMORY_PARKING:Ljava/lang/String; = "command://control.car.favoriteslotparking.learning"

.field public static final MEMORY_PARKING_START:Ljava/lang/String; = "command://control.car.favoriteslotparking.on"

.field public static final PARK_CARPORT_COUNT:Ljava/lang/String; = "native://autoparking.park.carport.count"

.field public static final PARK_START:Ljava/lang/String; = "command://autoparking.park.start"

.field public static final PARK_UNMANNED_START:Ljava/lang/String; = "command://unmannedparking.activate"

.field public static final START_FIND_PARKING_SPACE:Ljava/lang/String; = "command://autoparking.find.parking.space.start"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
