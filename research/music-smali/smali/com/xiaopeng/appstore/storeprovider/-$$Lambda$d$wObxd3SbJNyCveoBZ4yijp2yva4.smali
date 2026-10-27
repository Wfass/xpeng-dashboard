.class public final synthetic Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/appstore/storeprovider/d;

.field private final synthetic f$1:Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/appstore/storeprovider/d;Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;->f$0:Lcom/xiaopeng/appstore/storeprovider/d;

    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;->f$1:Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;

    iput-object p3, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;->f$0:Lcom/xiaopeng/appstore/storeprovider/d;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;->f$1:Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/d;->lambda$wObxd3SbJNyCveoBZ4yijp2yva4(Lcom/xiaopeng/appstore/storeprovider/d;Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v0

    return-object v0
.end method
