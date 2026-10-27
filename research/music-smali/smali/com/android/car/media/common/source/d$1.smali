.class Lcom/android/car/media/common/source/d$1;
.super Ljava/lang/Object;
.source "MediaSourceViewModel.java"

# interfaces
.implements Lcom/android/car/media/common/source/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/media/common/source/d;-><init>(Landroid/app/Application;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/car/media/common/source/d$1;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;Lcom/android/car/media/common/source/a$c;)Lcom/android/car/media/common/source/a;
    .locals 1

    .line 95
    new-instance v0, Lcom/android/car/media/common/source/a;

    invoke-direct {v0, p1, p2}, Lcom/android/car/media/common/source/a;-><init>(Landroid/content/Context;Lcom/android/car/media/common/source/a$c;)V

    return-object v0
.end method

.method public a(Landroid/content/ComponentName;)Lcom/android/car/media/common/source/b;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/car/media/common/source/d$1;->a:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/android/car/media/common/source/b;->a(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/car/media/common/source/b;

    move-result-object p1

    :goto_0
    return-object p1
.end method
