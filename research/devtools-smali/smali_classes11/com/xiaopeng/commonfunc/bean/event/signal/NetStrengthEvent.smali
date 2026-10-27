.class public Lcom/xiaopeng/commonfunc/bean/event/signal/NetStrengthEvent;
.super Ljava/lang/Object;
.source "NetStrengthEvent.java"


# instance fields
.field private final netStrength:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/NetStrengthEvent;->netStrength:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getNetStrength()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/NetStrengthEvent;->netStrength:Ljava/lang/String;

    return-object v0
.end method
