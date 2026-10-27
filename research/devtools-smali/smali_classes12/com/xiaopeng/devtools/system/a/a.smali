.class public Lcom/xiaopeng/devtools/system/a/a;
.super Lcom/xiaopeng/IXPKeyListener$Stub;
.source "KeyEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/system/a/a$a;
    }
.end annotation


# instance fields
.field private An:Landroid/hardware/input/InputManager;

.field private Ao:Lcom/xiaopeng/devtools/system/a/a$a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/system/a/a$a;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/IXPKeyListener$Stub;-><init>()V

    .line 16
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/a/a;->An:Landroid/hardware/input/InputManager;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/a/a;->Ao:Lcom/xiaopeng/devtools/system/a/a$a;

    .line 18
    return-void
.end method

.method private synthetic a(Landroid/view/KeyEvent;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/a/a;->Ao:Lcom/xiaopeng/devtools/system/a/a$a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/system/a/a$a;->b(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic lambda$SgUAGuTa5NvZDe0J4dseMxg7-qo(Lcom/xiaopeng/devtools/system/a/a;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/a/a;->a(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public notify(Landroid/view/KeyEvent;Ljava/lang/String;)I
    .locals 4

    .line 28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    .line 29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 30
    const-string v1, "FactoryKeyEventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify keycode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " action="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const/4 p2, 0x1

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/xiaopeng/devtools/system/a/a;->Ao:Lcom/xiaopeng/devtools/system/a/a$a;

    if-eqz p2, :cond_0

    .line 32
    new-instance p2, Lcom/xiaopeng/devtools/system/a/-$$Lambda$a$SgUAGuTa5NvZDe0J4dseMxg7-qo;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/devtools/system/a/-$$Lambda$a$SgUAGuTa5NvZDe0J4dseMxg7-qo;-><init>(Lcom/xiaopeng/devtools/system/a/a;Landroid/view/KeyEvent;)V

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 34
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public register()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/a/a;->An:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/a/a;->An:Landroid/hardware/input/InputManager;

    const-string v1, "FactoryKeyEventListener"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/input/InputManager;->registerListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;Z)V

    .line 24
    :cond_0
    return-void
.end method
