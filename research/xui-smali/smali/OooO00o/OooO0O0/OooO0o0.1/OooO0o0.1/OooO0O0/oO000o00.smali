.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/oO000o00;
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
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v0, 0x64

    const/16 v1, 0xfa0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0xc8

    .line 2
    move v0, v2

    goto :goto_0

    .line 1
    :pswitch_0
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x5

    const/16 v0, 0x78

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x3

    const/16 v1, 0x5dc

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x1

    const/16 v1, 0xbb8

    const/16 v0, 0x50

    goto :goto_0

    :pswitch_4
    const/16 v1, 0xdac

    const/16 v0, 0x28

    .line 2
    :goto_0
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;

    .line 3
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o00O;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;

    const-string v4, "rvb_type"

    .line 4
    invoke-virtual {v3, v4, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;->OooO00o(Ljava/lang/String;I)V

    .line 5
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;

    const-string v3, "rvb_time"

    .line 6
    invoke-virtual {v2, v3, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;->OooO00o(Ljava/lang/String;I)V

    .line 7
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;

    const-string v1, "rvb_vol"

    .line 8
    invoke-virtual {p1, v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO0O0;->OooO00o(Ljava/lang/String;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
