.class public final synthetic Lcom/android/car/xpeng/imm/-$$Lambda$CarImmService$2$IVOlpI25ddpVWD_XX1Z4Ak6kttM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/imm/CarImmService$2;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/imm/CarImmService$2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/imm/-$$Lambda$CarImmService$2$IVOlpI25ddpVWD_XX1Z4Ak6kttM;->f$0:Lcom/android/car/xpeng/imm/CarImmService$2;

    iput-object p2, p0, Lcom/android/car/xpeng/imm/-$$Lambda$CarImmService$2$IVOlpI25ddpVWD_XX1Z4Ak6kttM;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/xpeng/imm/-$$Lambda$CarImmService$2$IVOlpI25ddpVWD_XX1Z4Ak6kttM;->f$0:Lcom/android/car/xpeng/imm/CarImmService$2;

    iget-object v1, p0, Lcom/android/car/xpeng/imm/-$$Lambda$CarImmService$2$IVOlpI25ddpVWD_XX1Z4Ak6kttM;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/car/xpeng/imm/CarImmService$2;->lambda$onEvent$0(Lcom/android/car/xpeng/imm/CarImmService$2;Ljava/util/List;)V

    return-void
.end method
