.class public Lcom/xiaopeng/speech/actor/Actor;
.super Ljava/lang/Object;
.source "Actor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/actor/Actor;",
            ">;"
        }
    .end annotation
.end field

.field public static sActorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/actor/Actor;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/xiaopeng/speech/actor/Actor$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/actor/Actor$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/actor/Actor;->sActorMap:Ljava/util/Map;

    .line 66
    new-instance v0, Lcom/xiaopeng/speech/actor/Actor$2;

    invoke-direct {v0}, Lcom/xiaopeng/speech/actor/Actor$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/actor/Actor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/speech/actor/Actor;->mName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/speech/actor/Actor;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/Actor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/xiaopeng/speech/actor/Actor;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
