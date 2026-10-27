.class public final synthetic Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$RGzU44uU3MF7zPFFo0S0u8goQdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$RGzU44uU3MF7zPFFo0S0u8goQdU;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$RGzU44uU3MF7zPFFo0S0u8goQdU;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$RGzU44uU3MF7zPFFo0S0u8goQdU;->f$0:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$RGzU44uU3MF7zPFFo0S0u8goQdU;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/GlideUtil;->lambda$null$0(Ljava/lang/ref/WeakReference;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
