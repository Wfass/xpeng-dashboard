.class public final LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0$OooO00o;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;-><init>(Landroid/hardware/usb/UsbInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;)V
    .locals 0

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;

    .line 2
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;->OooO00o:Landroid/hardware/usb/UsbInterface;

    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
