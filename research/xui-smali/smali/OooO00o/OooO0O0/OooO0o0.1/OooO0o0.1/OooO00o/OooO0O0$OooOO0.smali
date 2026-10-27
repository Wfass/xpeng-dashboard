.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;-><init>(Landroid/content/Context;LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;)V
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
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0;

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
