.class public final synthetic Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bJ2UQ_YlaYg9powCQKP7A1DfDyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bJ2UQ_YlaYg9powCQKP7A1DfDyo;->f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bJ2UQ_YlaYg9powCQKP7A1DfDyo;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bJ2UQ_YlaYg9powCQKP7A1DfDyo;->f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bJ2UQ_YlaYg9powCQKP7A1DfDyo;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->lambda$removeNavigationBar$2(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;I)V

    return-void
.end method
