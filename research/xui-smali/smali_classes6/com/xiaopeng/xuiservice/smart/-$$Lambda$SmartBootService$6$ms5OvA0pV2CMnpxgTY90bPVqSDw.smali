.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$6$ms5OvA0pV2CMnpxgTY90bPVqSDw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$6$ms5OvA0pV2CMnpxgTY90bPVqSDw;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartBootService$6$ms5OvA0pV2CMnpxgTY90bPVqSDw;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;->lambda$onStateChanged$0(Lcom/xiaopeng/xuiservice/smart/SmartBootService$6;)V

    return-void
.end method
