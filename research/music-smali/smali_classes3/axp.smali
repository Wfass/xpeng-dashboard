.class public Laxp;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Laxp;->a:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Laxp;->b:Ljava/lang/Integer;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 27
    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->delete_music_list_name_template:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaopeng/musicradio/utils/ca;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 3

    .line 62
    new-instance p1, Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 64
    invoke-virtual {p1, p5}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 65
    sget-object p5, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p5}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 66
    sget p5, Lcom/xiaopeng/musicradio/mine/a$e;->delete_warning_title:I

    invoke-virtual {p1, p5}, Lcom/xiaopeng/musicradio/widget/f;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p5

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->delete_warning_template:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p2

    sget p5, Lcom/xiaopeng/musicradio/mine/a$e;->delete:I

    .line 68
    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Laxp$4;

    invoke-direct {v0, p3}, Laxp$4;-><init>(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)V

    invoke-virtual {p2, p5, v0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p2

    sget p3, Lcom/xiaopeng/musicradio/mine/a$e;->cancel:I

    .line 77
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Laxp$3;

    invoke-direct {p3, p1, p4}, Laxp$3;-><init>(Lcom/xiaopeng/musicradio/widget/f;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)V

    invoke-virtual {p2, p0, p3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 87
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaopeng/musicradio/utils/ca;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 3

    .line 35
    new-instance p1, Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 37
    invoke-virtual {p1, p4}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 38
    sget-object p4, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 39
    sget p4, Lcom/xiaopeng/musicradio/mine/a$e;->delete_warning_title:I

    invoke-virtual {p1, p4}, Lcom/xiaopeng/musicradio/widget/f;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p4

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->delete_warning_template:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p2

    sget p4, Lcom/xiaopeng/musicradio/mine/a$e;->delete:I

    .line 41
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Laxp$2;

    invoke-direct {v0, p3}, Laxp$2;-><init>(Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)V

    invoke-virtual {p2, p4, v0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p2

    sget p3, Lcom/xiaopeng/musicradio/mine/a$e;->cancel:I

    .line 50
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Laxp$1;

    invoke-direct {p3, p1}, Laxp$1;-><init>(Lcom/xiaopeng/musicradio/widget/f;)V

    invoke-virtual {p2, p0, p3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 57
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method
