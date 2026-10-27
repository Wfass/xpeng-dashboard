.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOO0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;-><init>(Landroid/hardware/usb/UsbDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;)V
    .locals 0

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;

    .line 2
    iget-object v1, v1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    .line 3
    invoke-direct {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;-><init>(Landroid/hardware/usb/UsbDevice;)V

    return-object v0
.end method
