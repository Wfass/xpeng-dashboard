.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartIcmService$PVJbrPvJvccInMrCR4e356ZdEAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartIcmService$PVJbrPvJvccInMrCR4e356ZdEAI;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartIcmService$PVJbrPvJvccInMrCR4e356ZdEAI;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->lambda$onConnectedCar$0(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    return-void
.end method
