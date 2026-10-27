.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0OOOO0o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO0OO<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;

    const-string v2, "mute"

    .line 4
    invoke-virtual {v1, v2, p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;->OooO00o(Ljava/lang/String;I)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;

    .line 10
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO;->o000000O()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0O;->OooO0O0(I)I

    move-result v1

    .line 11
    :goto_1
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;

    const-string v2, "usb_mic_gain_l"

    .line 12
    invoke-virtual {p1, v2, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;->OooO00o(Ljava/lang/String;I)V

    .line 13
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;

    const-string v0, "usb_mic_gain_r"

    .line 14
    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;->OooO00o(Ljava/lang/String;I)V

    return-void
.end method
