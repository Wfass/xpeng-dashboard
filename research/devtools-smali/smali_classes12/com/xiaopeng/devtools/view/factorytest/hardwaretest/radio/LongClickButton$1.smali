.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$1;
.super Ljava/lang/Object;
.source "LongClickButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$1;->KV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$1;->KV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-direct {v1, v2, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    const/4 p1, 0x1

    return p1
.end method
