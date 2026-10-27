.class public Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;
.super Lcom/xiaopeng/IXPKeyListener$Stub;
.source "KeyEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener$KeyUpCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonFuncKeyEventListener"


# instance fields
.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mKeyUpCallback:Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener$KeyUpCallback;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener$KeyUpCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener$KeyUpCallback;

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/IXPKeyListener$Stub;-><init>()V

    .line 16
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;->mInputManager:Landroid/hardware/input/InputManager;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;->mKeyUpCallback:Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener$KeyUpCallback;

    .line 18
    return-void
.end method

.method public static synthetic lambda$notify$0(Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;->mKeyUpCallback:Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener$KeyUpCallback;

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener$KeyUpCallback;->onKeyUp(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public notify(Landroid/view/KeyEvent;Ljava/lang/String;)I
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "extra"    # Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 29
    .local v0, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 30
    .local v1, "action":I
    const-string v2, "CommonFuncKeyEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify keycode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;->mKeyUpCallback:Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener$KeyUpCallback;

    if-eqz v2, :cond_0

    .line 32
    new-instance v2, Lcom/xiaopeng/commonfunc/system/listener/-$$Lambda$KeyEventListener$SEU0EiQiByGOL7W4dPO2CAi5-l0;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/commonfunc/system/listener/-$$Lambda$KeyEventListener$SEU0EiQiByGOL7W4dPO2CAi5-l0;-><init>(Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;Landroid/view/KeyEvent;)V

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 34
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public register()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/KeyEventListener;->mInputManager:Landroid/hardware/input/InputManager;

    const-string v1, "CommonFuncKeyEventListener"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/input/InputManager;->registerListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;Z)V

    .line 24
    :cond_0
    return-void
.end method
