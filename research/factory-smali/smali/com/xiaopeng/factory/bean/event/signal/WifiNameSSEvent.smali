.class public Lcom/xiaopeng/factory/bean/event/signal/WifiNameSSEvent;
.super Ljava/lang/Object;
.source "WifiNameSSEvent.java"


# instance fields
.field private ip:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private speed:Ljava/lang/String;

.field private strength:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strength"    # Ljava/lang/String;
    .param p3, "speed"    # Ljava/lang/String;
    .param p4, "ip"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/xiaopeng/factory/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/xiaopeng/factory/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    .line 18
    return-void
.end method
