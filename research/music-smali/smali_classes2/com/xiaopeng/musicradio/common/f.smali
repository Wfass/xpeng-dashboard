.class public interface abstract Lcom/xiaopeng/musicradio/common/f;
.super Ljava/lang/Object;
.source "IConstants.java"


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->headspeech_album_name:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/common/f;->b:Ljava/lang/String;

    return-void
.end method
