.class Lorg/chromium/base/task/c$1;
.super Ljava/lang/Object;
.source "ChoreographerTaskRunner.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/task/c;->a(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lorg/chromium/base/task/c;


# direct methods
.method constructor <init>(Lorg/chromium/base/task/c;Ljava/lang/Runnable;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/chromium/base/task/c$1;->b:Lorg/chromium/base/task/c;

    iput-object p2, p0, Lorg/chromium/base/task/c$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 54
    iget-object p1, p0, Lorg/chromium/base/task/c$1;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
