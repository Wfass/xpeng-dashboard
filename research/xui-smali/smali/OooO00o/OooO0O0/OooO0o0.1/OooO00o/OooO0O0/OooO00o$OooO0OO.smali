.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0OO;
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
        "Ljava/util/ArrayList<",
        "Lcom/loostone/libtuning/data/bean/HidItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0OO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0OO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0OO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0OO;

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
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/loostone/libtuning/data/bean/HidItem;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x3

    invoke-direct {v1, v3, v2, v4}, Lcom/loostone/libtuning/data/bean/HidItem;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/loostone/libtuning/data/bean/HidItem;

    const/4 v4, 0x4

    const/4 v5, -0x4

    invoke-direct {v1, v3, v4, v5}, Lcom/loostone/libtuning/data/bean/HidItem;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/loostone/libtuning/data/bean/HidItem;

    const/16 v4, 0x8

    const/4 v5, -0x5

    invoke-direct {v1, v3, v4, v5}, Lcom/loostone/libtuning/data/bean/HidItem;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/loostone/libtuning/data/bean/HidItem;

    const/16 v4, 0x20

    const/4 v5, -0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/loostone/libtuning/data/bean/HidItem;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/loostone/libtuning/data/bean/HidItem;

    const/4 v4, -0x1

    const/16 v5, 0x40

    invoke-direct {v1, v3, v5, v4}, Lcom/loostone/libtuning/data/bean/HidItem;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/loostone/libtuning/data/bean/HidItem;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v5, v4}, Lcom/loostone/libtuning/data/bean/HidItem;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/loostone/libtuning/data/bean/HidItem;

    invoke-direct {v1, v2, v5, v4}, Lcom/loostone/libtuning/data/bean/HidItem;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
