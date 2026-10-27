.class Lorg/chromium/base/ApplicationStatus$1;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/ApplicationStatus;->registerThreadSafeNativeApplicationStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 577
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Lorg/chromium/base/ApplicationStatus$a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 579
    :cond_0
    new-instance v0, Lorg/chromium/base/ApplicationStatus$1$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/ApplicationStatus$1$1;-><init>(Lorg/chromium/base/ApplicationStatus$1;)V

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->c(Lorg/chromium/base/ApplicationStatus$a;)Lorg/chromium/base/ApplicationStatus$a;

    .line 585
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Lorg/chromium/base/ApplicationStatus$a;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->a(Lorg/chromium/base/ApplicationStatus$a;)V

    return-void
.end method
