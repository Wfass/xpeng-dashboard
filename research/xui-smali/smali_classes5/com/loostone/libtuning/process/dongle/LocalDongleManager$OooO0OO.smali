.class public final Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0OO;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/process/dongle/LocalDongleManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0OO;->OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    .line 2
    iget-object v1, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0OO;->OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    invoke-static {v1}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->access$getMContext$p(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0OO;->OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    .line 4
    invoke-direct {v0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;-><init>(Landroid/content/Context;Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)V

    return-object v0
.end method
