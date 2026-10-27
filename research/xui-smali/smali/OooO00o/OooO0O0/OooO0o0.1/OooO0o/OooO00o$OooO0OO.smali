.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0OO;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;)V
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
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;)V
    .locals 0

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    .line 2
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    .line 3
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v1, :cond_7

    .line 4
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooooOo()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_3

    goto :goto_5

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_5

    goto :goto_7

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    goto :goto_a

    .line 8
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_f

    goto :goto_9

    .line 13
    :cond_7
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->Oooo0O0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    goto :goto_4

    .line 14
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_9

    :goto_3
    const/16 v0, 0xc8

    goto :goto_b

    :cond_9
    :goto_4
    if-nez v0, :cond_a

    goto :goto_6

    .line 15
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_b

    :goto_5
    const/16 v0, 0x12c

    goto :goto_b

    :cond_b
    :goto_6
    if-nez v0, :cond_c

    goto :goto_8

    .line 16
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_d

    :goto_7
    const/16 v0, 0x190

    goto :goto_b

    :cond_d
    :goto_8
    if-nez v0, :cond_e

    goto :goto_a

    .line 17
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_f

    :goto_9
    const/16 v0, 0x1f4

    goto :goto_b

    :cond_f
    :goto_a
    const/16 v0, 0x64

    .line 18
    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
