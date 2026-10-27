.class abstract Lcom/xiaopeng/xui/app/a/i;
.super Ljava/lang/Object;
.source "XActivityTemplateExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/a/i$e;,
        Lcom/xiaopeng/xui/app/a/i$b;,
        Lcom/xiaopeng/xui/app/a/i$c;,
        Lcom/xiaopeng/xui/app/a/i$f;,
        Lcom/xiaopeng/xui/app/a/i$d;,
        Lcom/xiaopeng/xui/app/a/i$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Landroid/app/Activity;I)Lcom/xiaopeng/xui/app/a/i;
    .locals 0

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 68
    new-instance p1, Lcom/xiaopeng/xui/app/a/i$d;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/a/i$d;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 76
    :pswitch_0
    new-instance p1, Lcom/xiaopeng/xui/app/a/i$f;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/a/i$f;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 74
    :pswitch_1
    new-instance p1, Lcom/xiaopeng/xui/app/a/i$b;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/a/i$b;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 72
    :pswitch_2
    new-instance p1, Lcom/xiaopeng/xui/app/a/i$c;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/a/i$c;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 70
    :pswitch_3
    new-instance p1, Lcom/xiaopeng/xui/app/a/i$e;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/a/i$e;-><init>(Landroid/app/Activity;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method abstract a(Lcom/xiaopeng/xui/app/a/f;)V
.end method

.method abstract a(Lcom/xiaopeng/xui/app/a/g;)V
.end method

.method abstract a(Lcom/xiaopeng/xui/app/a/j;)V
.end method

.method abstract a(Lcom/xiaopeng/xui/app/a/k;)V
.end method
