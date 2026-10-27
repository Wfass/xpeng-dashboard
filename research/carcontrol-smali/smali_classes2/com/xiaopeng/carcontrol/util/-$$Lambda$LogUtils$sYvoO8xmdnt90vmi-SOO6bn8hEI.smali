.class public final synthetic Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;->f$3:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$LogUtils$sYvoO8xmdnt90vmi-SOO6bn8hEI;->f$3:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->lambda$writeLogToFile$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
