.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$CatchHueUtils$Tg5nlM8LvbVIDjIR21OkI56PvqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$CatchHueUtils$Tg5nlM8LvbVIDjIR21OkI56PvqU;->f$0:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$CatchHueUtils$Tg5nlM8LvbVIDjIR21OkI56PvqU;->f$0:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->lambda$registerHueDataListener$0(Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;)V

    return-void
.end method
