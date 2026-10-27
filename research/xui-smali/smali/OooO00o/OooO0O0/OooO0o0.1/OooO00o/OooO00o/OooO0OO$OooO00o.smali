.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO00o;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/media/AudioManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;)V
    .locals 0

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;

    .line 2
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o:Landroid/content/Context;

    const-string v1, "audio"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
