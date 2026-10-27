.class public final synthetic Lcom/xiaopeng/smartcontrol/sdk/server/-$$Lambda$CarControlSDKImpl$lG0AilScb2asqJY8GZECaPoqpW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/ipc/server/ServerListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/-$$Lambda$CarControlSDKImpl$lG0AilScb2asqJY8GZECaPoqpW4;->f$0:Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    return-void
.end method


# virtual methods
.method public final onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/-$$Lambda$CarControlSDKImpl$lG0AilScb2asqJY8GZECaPoqpW4;->f$0:Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->lambda$init$0$CarControlSDKImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
