.class public final LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O$o0oOOo;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O$o0oOOo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O$o0oOOo;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O$o0oOOo;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O$o0oOOo;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O$o0oOOo;

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
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;

    .line 2
    sget v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO00o;->OooO0O0:I

    const-string v2, "aef4_scene_effect_mode"

    .line 3
    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->intPref(Ljava/lang/String;I)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    return-object v0
.end method
