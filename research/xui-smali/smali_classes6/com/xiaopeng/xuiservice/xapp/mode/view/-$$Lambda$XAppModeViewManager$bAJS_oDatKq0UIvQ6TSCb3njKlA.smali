.class public final synthetic Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;->f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;->f$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->lambda$updateScreenNavigationBar$0(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/util/List;)V

    return-void
.end method
