.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;-><init>(Landroid/content/Context;LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V
    .locals 0

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "device"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 4
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    .line 5
    iget-object v1, v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1, p2, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;->OooO00o(Landroid/content/Context;Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V

    :goto_0
    return-void
.end method
