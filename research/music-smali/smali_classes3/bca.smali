.class public Lbca;
.super Ljava/lang/Object;
.source "AiSuggestMediaModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbca$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "christmaseve"

.field private static c:Ljava/lang/String; = "christmas"

.field private static d:Ljava/lang/String; = "newyear"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbca$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lbca;-><init>()V

    return-void
.end method

.method public static a()Lbca;
    .locals 1

    .line 29
    sget-object v0, Lbca$a;->a:Lbca;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveSuggest content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiSuggestMediaModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-class v0, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;

    if-nez p1, :cond_1

    const-string p1, "onReceiveSuggest bean == null"

    .line 43
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 48
    new-instance v0, Lart$a;

    invoke-direct {v0, p1}, Lart$a;-><init>(Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 50
    new-instance v0, Lart$a;

    invoke-direct {v0, p1}, Lart$a;-><init>(Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 52
    new-instance v0, Lart$a;

    invoke-direct {v0, p1}, Lart$a;-><init>(Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    const-string v0, "SGST_TYPE_VIP"

    .line 54
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lart$a;

    invoke-direct {v0, p1}, Lart$a;-><init>(Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6

    .line 57
    new-instance v0, Lart$a;

    invoke-direct {v0, p1}, Lart$a;-><init>(Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_7

    .line 59
    new-instance v0, Lart$a;

    invoke-direct {v0, p1}, Lart$a;-><init>(Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string p1, "no surpport!"

    .line 62
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :goto_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$a;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveEggs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiSuggestMediaModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    sget-object v0, Lbca;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lbca;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lbca;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "\u5143\u65e6\u6b4c\u66f2..."

    .line 85
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance p1, Lart$b;

    const-string v0, "655234952"

    invoke-direct {p1, v0}, Lart$b;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p1, "\u5723\u8bde\u6b4c\u66f2..."

    .line 81
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance p1, Lart$b;

    const-string v0, "655253840"

    invoke-direct {p1, v0}, Lart$b;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
