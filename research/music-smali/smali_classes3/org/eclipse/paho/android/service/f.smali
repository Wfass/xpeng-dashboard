.class Lorg/eclipse/paho/android/service/f;
.super Lorg/eclipse/paho/android/service/h;
.source "MqttDeliveryTokenAndroid.java"

# interfaces
.implements Lcef;


# instance fields
.field private a:Lcep;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;Lcep;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/h;-><init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;)V

    .line 36
    iput-object p4, p0, Lorg/eclipse/paho/android/service/f;->a:Lcep;

    return-void
.end method


# virtual methods
.method public a()Lcep;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/eclipse/paho/android/service/f;->a:Lcep;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttDeliveryTokenAndroid{topics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/f;->e()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
