.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$oFviTrFAkPBTee5AbHls90fdi5U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$oFviTrFAkPBTee5AbHls90fdi5U;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$XPengBleManager$oFviTrFAkPBTee5AbHls90fdi5U;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;->lambda$processServicesOn$3(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;)V

    return-void
.end method
