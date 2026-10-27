.class public Lcom/xiaopeng/screen/ScreenItemConfiguration;
.super Ljava/lang/Object;
.source "ScreenItemConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/screen/ScreenItemConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public displayId:I

.field public displayType:I

.field public logicalBounds:Landroid/graphics/Rect;

.field public physicalBounds:Landroid/graphics/Rect;

.field public screenEnabled:Z

.field public screenId:I

.field public screenName:Ljava/lang/String;

.field public screenType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/xiaopeng/screen/ScreenItemConfiguration$1;

    invoke-direct {v0}, Lcom/xiaopeng/screen/ScreenItemConfiguration$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenEnabled:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayId:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayType:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->logicalBounds:Landroid/graphics/Rect;

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/screen/ScreenItemConfiguration$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaopeng/screen/ScreenItemConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static clone(Lcom/xiaopeng/screen/ScreenItemConfiguration;)Lcom/xiaopeng/screen/ScreenItemConfiguration;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;

    invoke-direct {v0}, Lcom/xiaopeng/screen/ScreenItemConfiguration;-><init>()V

    .line 70
    iget v1, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    iput v1, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    .line 71
    iget v1, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenType:I

    iput v1, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenType:I

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenName:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenName:Ljava/lang/String;

    .line 73
    iget-boolean v1, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenEnabled:Z

    iput-boolean v1, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenEnabled:Z

    .line 74
    iget v1, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayId:I

    iput v1, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayId:I

    .line 75
    iget v1, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayType:I

    iput v1, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayType:I

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->logicalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->logicalBounds:Landroid/graphics/Rect;

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static fromText(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenItemConfiguration;
    .locals 6

    const-string v0, ""

    .line 23
    new-instance v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;

    invoke-direct {v1}, Lcom/xiaopeng/screen/ScreenItemConfiguration;-><init>()V

    .line 25
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "screenId"

    const/4 v3, -0x1

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/xiaopeng/util/xpTextUtils;->getValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    const-string p0, "screenType"

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/xiaopeng/util/xpTextUtils;->getValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenType:I

    const-string p0, "screenName"

    .line 28
    invoke-static {p0, v2, v0}, Lcom/xiaopeng/util/xpTextUtils;->getValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenName:Ljava/lang/String;

    const-string p0, "screenEnabled"

    const/4 v4, 0x1

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lcom/xiaopeng/util/xpTextUtils;->getValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenEnabled:Z

    const-string p0, "displayId"

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/xiaopeng/util/xpTextUtils;->getValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayId:I

    const-string p0, "displayType"

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/xiaopeng/util/xpTextUtils;->getValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayType:I

    const-string p0, "logicalBounds"

    .line 32
    invoke-static {p0, v2, v0}, Lcom/xiaopeng/util/xpTextUtils;->getValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v3, "physicalBounds"

    .line 33
    invoke-static {v3, v2, v0}, Lcom/xiaopeng/util/xpTextUtils;->getValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-static {p0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->logicalBounds:Landroid/graphics/Rect;

    .line 35
    invoke-static {v0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " screenType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " screenName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " screenEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " displayType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " logicalBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->logicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " physicalBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 83
    iget p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-boolean p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 87
    iget p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->displayType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->logicalBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->logicalBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object p2, p0, Lcom/xiaopeng/screen/ScreenItemConfiguration;->physicalBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
