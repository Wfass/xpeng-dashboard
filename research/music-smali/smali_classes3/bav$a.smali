.class Lbav$a;
.super Ljava/lang/Object;
.source "KugouMusicRadioOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbav;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lbav;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getKugouMusicRadioItemDao()Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbav;-><init>(Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;)V

    sput-object v0, Lbav$a;->a:Lbav;

    return-void
.end method
