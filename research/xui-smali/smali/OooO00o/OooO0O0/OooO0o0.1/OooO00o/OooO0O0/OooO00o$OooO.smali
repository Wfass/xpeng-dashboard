.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOOOO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    .line 312
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 313
    move v1, v2

    goto :goto_1

    .line 312
    :cond_1
    nop

    .line 313
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
