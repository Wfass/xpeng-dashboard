.class public final synthetic Lcom/xiaopeng/commonfunc/system/listener/-$$Lambda$KeyEventListener$SEU0EiQiByGOL7W4dPO2CAi5-l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;

.field private final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/system/listener/-$$Lambda$KeyEventListener$SEU0EiQiByGOL7W4dPO2CAi5-l0;->f$0:Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/system/listener/-$$Lambda$KeyEventListener$SEU0EiQiByGOL7W4dPO2CAi5-l0;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/-$$Lambda$KeyEventListener$SEU0EiQiByGOL7W4dPO2CAi5-l0;->f$0:Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/system/listener/-$$Lambda$KeyEventListener$SEU0EiQiByGOL7W4dPO2CAi5-l0;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;->lambda$notify$0(Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;Landroid/view/KeyEvent;)V

    return-void
.end method
