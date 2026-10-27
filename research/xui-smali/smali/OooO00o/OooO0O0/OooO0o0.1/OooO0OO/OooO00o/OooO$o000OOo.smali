.class public final LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO$o000OOo;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO;-><clinit>()V
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
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO$o000OOo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO$o000OOo;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO$o000OOo;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO$o000OOo;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO$o000OOo;

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
    .locals 5

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO;

    const-string v1, "aef2_echo_enable"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;->intPref$default(LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0O0;Ljava/lang/String;IILjava/lang/Object;)LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    return-object v0
.end method
