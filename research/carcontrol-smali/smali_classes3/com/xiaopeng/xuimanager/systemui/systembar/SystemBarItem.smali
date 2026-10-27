.class public Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;
.super Ljava/lang/Object;
.source "SystemBarItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Builder;,
        Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$IconKey;,
        Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_PERSONAL:I = 0x64

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_PERSONAL:I = 0x64


# instance fields
.field private barType:I

.field private extras:Landroid/os/Bundle;

.field private flags:I

.field private iconKey:I

.field private screenId:I

.field private smallIcon:Landroid/graphics/drawable/Icon;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->extras:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->extras:Landroid/os/Bundle;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->barType:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->screenId:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->type:I

    .line 69
    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->smallIcon:Landroid/graphics/drawable/Icon;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->iconKey:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->title:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->flags:I

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->extras:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->barType:I

    return p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->screenId:I

    return p1
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->type:I

    return p1
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->smallIcon:Landroid/graphics/drawable/Icon;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->flags:I

    return p1
.end method

.method static synthetic access$602(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->iconKey:I

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;)Landroid/os/Bundle;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->extras:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBarType()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->barType:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->flags:I

    return v0
.end method

.method public getIconKey()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->iconKey:I

    return v0
.end method

.method public getScreenId()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->screenId:I

    return v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->smallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemBarItem{barType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->barType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smallIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->smallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->iconKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 78
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->barType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->screenId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->smallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->iconKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
