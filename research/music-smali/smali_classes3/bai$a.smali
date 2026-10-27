.class Lbai$a;
.super Ljava/lang/Object;
.source "MusicRadioOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lbai;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getMusicRadioItemDao()Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbai;-><init>(Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;)V

    sput-object v0, Lbai$a;->a:Lbai;

    return-void
.end method
