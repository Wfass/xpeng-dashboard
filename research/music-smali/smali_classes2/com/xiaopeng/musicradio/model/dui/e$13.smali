.class Lcom/xiaopeng/musicradio/model/dui/e$13;
.super Laxz;
.source "DuiMusicMediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;Ljava/lang/String;I)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$13;->a:Lcom/xiaopeng/musicradio/model/dui/e;

    invoke-direct {p0, p2, p3}, Laxz;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 0

    .line 530
    invoke-super {p0, p1, p2, p3}, Laxz;->a(ZILjava/lang/String;)V

    .line 531
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
