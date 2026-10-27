.class final Lcom/xiaopeng/devtools/model/c/a/g$a;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic sD:Lcom/xiaopeng/devtools/model/c/a/g;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/c/a/g;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g$a;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/g$a;-><init>(Lcom/xiaopeng/devtools/model/c/a/g;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 108
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$a;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    const/16 v1, 0x9

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;I)I

    .line 111
    const-string p1, "MobileNetworkModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthsChanged lteSignalStrength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/g$a;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/c/a/g;->d(Lcom/xiaopeng/devtools/model/c/a/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    return-void
.end method
