.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0o;
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
        "Ljava/util/LinkedList<",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0o;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0o;

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
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
