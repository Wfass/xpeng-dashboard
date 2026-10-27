.class Lcom/xiaopeng/musicradio/model/common/a$7;
.super Landroid/database/ContentObserver;
.source "AppLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/common/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/common/a;Landroid/os/Handler;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a$7;->a:Lcom/xiaopeng/musicradio/model/common/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 198
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$o;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$o;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
