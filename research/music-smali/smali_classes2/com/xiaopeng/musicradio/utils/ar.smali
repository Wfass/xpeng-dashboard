.class public Lcom/xiaopeng/musicradio/utils/ar;
.super Ljava/lang/Object;
.source "MusicSettingsHelper.java"


# direct methods
.method public static a(IZ)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ar;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ar;->b(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_setting_continue_play_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
