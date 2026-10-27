.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$Ouf04omwyzaVRmJhZx5negpceY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$Ouf04omwyzaVRmJhZx5negpceY8;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$Ouf04omwyzaVRmJhZx5negpceY8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$Ouf04omwyzaVRmJhZx5negpceY8;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$Ouf04omwyzaVRmJhZx5negpceY8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;->lambda$onEvent$1(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;Ljava/lang/String;)V

    return-void
.end method
