.class Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;
.super Ljava/lang/Object;
.source "DeviceData.java"


# instance fields
.field latitude:Ljava/lang/String;

.field longitude:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "desLatitude"    # Ljava/lang/String;
    .param p2, "desLongitude"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;->latitude:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;->longitude:Ljava/lang/String;

    .line 38
    return-void
.end method
