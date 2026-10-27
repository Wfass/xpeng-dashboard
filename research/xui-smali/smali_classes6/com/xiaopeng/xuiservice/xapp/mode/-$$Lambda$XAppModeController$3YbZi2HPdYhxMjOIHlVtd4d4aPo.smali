.class public final synthetic Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$3YbZi2HPdYhxMjOIHlVtd4d4aPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$3YbZi2HPdYhxMjOIHlVtd4d4aPo;->f$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$3YbZi2HPdYhxMjOIHlVtd4d4aPo;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$3YbZi2HPdYhxMjOIHlVtd4d4aPo;->f$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$3YbZi2HPdYhxMjOIHlVtd4d4aPo;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->lambda$shareEventCallback$1(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;Ljava/lang/String;)V

    return-void
.end method
