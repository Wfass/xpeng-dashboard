.class public Landroid/app/Notification$Action;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Action$SemanticAction;,
        Landroid/app/Notification$Action$WearableExtender;,
        Landroid/app/Notification$Action$Extender;,
        Landroid/app/Notification$Action$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_DATA_ONLY_INPUTS:Ljava/lang/String; = "android.extra.DATA_ONLY_INPUTS"

.field public static final SEMANTIC_ACTION_ARCHIVE:I = 0x5

.field public static final SEMANTIC_ACTION_CALL:I = 0xa

.field public static final SEMANTIC_ACTION_CONVERSATION_IS_PHISHING:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SEMANTIC_ACTION_DELETE:I = 0x4

.field public static final SEMANTIC_ACTION_MARK_AS_READ:I = 0x2

.field public static final SEMANTIC_ACTION_MARK_AS_UNREAD:I = 0x3

.field public static final SEMANTIC_ACTION_MARK_CONVERSATION_AS_PRIORITY:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SEMANTIC_ACTION_MUTE:I = 0x6

.field public static final SEMANTIC_ACTION_NONE:I = 0x0

.field public static final SEMANTIC_ACTION_REPLY:I = 0x1

.field public static final SEMANTIC_ACTION_THUMBS_DOWN:I = 0x9

.field public static final SEMANTIC_ACTION_THUMBS_UP:I = 0x8

.field public static final SEMANTIC_ACTION_UNMUTE:I = 0x7


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAllowGeneratedReplies:Z

.field private mAuthenticationRequired:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private final mIsContextual:Z

.field private final mRemoteInputs:[Landroid/app/RemoteInput;

.field private final mSemanticAction:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2296
    new-instance v0, Landroid/app/Notification$Action$1;

    invoke-direct {v0}, Landroid/app/Notification$Action$1;-><init>()V

    sput-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;IILandroid/app/PendingIntent;)V
    .locals 0

    .line 1848
    invoke-direct {p0, p1, p2, p5}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1849
    iget-object p1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string p2, "isButtonClickHideCard"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1850
    iget-object p1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string p2, "isButtonEnable"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 1843
    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    .line 1869
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)V

    .line 1870
    iget-object p1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string p2, "isButtonEnable"

    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)V
    .locals 10

    .line 1861
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    invoke-direct/range {v0 .. v9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    .line 1863
    iget-object p1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string p3, "actionButtonBgNight"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1864
    iget-object p1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string p2, "isButtonClickHideCard"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 10

    .line 1855
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V
    .locals 2

    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1795
    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1919
    iput-object p1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz p1, :cond_0

    .line 1920
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1921
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Action;->icon:I

    .line 1923
    :cond_0
    iput-object p2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1924
    iput-object p3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 1925
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    .line 1926
    iput-object p5, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 1927
    iput-boolean p6, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1928
    iput p7, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    .line 1929
    iput-boolean p8, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    .line 1930
    iput-boolean p9, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZLandroid/app/Notification$1;)V
    .locals 0

    .line 1697
    invoke-direct/range {p0 .. p9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1795
    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1821
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1822
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1823
    iget-object v1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Action;->icon:I

    .line 1826
    :cond_0
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1828
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1830
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    .line 1831
    sget-object v1, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/RemoteInput;

    iput-object v1, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 1832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    .line 1834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    .line 1835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Notification$1;)V
    .locals 0

    .line 1697
    invoke-direct {p0, p1}, Landroid/app/Notification$Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)V
    .locals 10

    .line 1875
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    .line 1877
    iget-object p2, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string p4, "liveContentTitle"

    invoke-virtual {p2, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    iget-object p1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string p2, "isButtonClickHideCard"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;ILandroid/app/PendingIntent;)V
    .locals 11

    move-object v10, p0

    .line 1882
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    .line 1884
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "liveContentTitle"

    move-object v2, p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "liveContentSubTitle"

    move-object v2, p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "liveItemIconDay"

    move-object v2, p4

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1887
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "liveItemIconNight"

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1888
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "isButtonClickHideCard"

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$LiveItemAction;",
            ">;)V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p6

    .line 1893
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    .line 1895
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "liveContentTitle"

    move-object v2, p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "liveContentSubTitle"

    move-object v2, p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "liveItemIconDay"

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1898
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "liveItemIconNight"

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v11, :cond_0

    .line 1900
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1901
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$LiveItemAction;

    invoke-virtual {v1}, Landroid/app/Notification$LiveItemAction;->getActionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1902
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$LiveItemAction;

    invoke-virtual {v1}, Landroid/app/Notification$LiveItemAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v10, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1903
    iget-object v1, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$LiveItemAction;

    invoke-virtual {v0}, Landroid/app/Notification$LiveItemAction;->isClickHide()I

    move-result v0

    const-string v2, "isButtonClickHideCard"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1905
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1906
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$LiveItemAction;

    invoke-virtual {v2}, Landroid/app/Notification$LiveItemAction;->getActionName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "titleTwo"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$LiveItemAction;

    invoke-virtual {v2}, Landroid/app/Notification$LiveItemAction;->isClickHide()I

    move-result v2

    const-string v3, "isButtonTwoClickHide"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1908
    iget-object v0, v10, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$LiveItemAction;

    invoke-virtual {v1}, Landroid/app/Notification$LiveItemAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "actionIntentTwo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/app/Notification$Action;)Landroid/os/Bundle;
    .locals 0

    .line 1697
    iget-object p0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$2500(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;
    .locals 0

    .line 1697
    iget-object p0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    return-object p0
.end method


# virtual methods
.method public clone()Landroid/app/Notification$Action;
    .locals 11

    .line 2255
    new-instance v10, Landroid/app/Notification$Action;

    .line 2256
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 2259
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v4, v0

    .line 2260
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 2261
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v6

    .line 2262
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v7

    .line 2263
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v8

    .line 2264
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    return-object v10
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1697
    invoke-virtual {p0}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 1

    .line 1956
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;
    .locals 3

    .line 1997
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-class v1, Landroid/app/RemoteInput;

    const-string v2, "android.extra.DATA_ONLY_INPUTS"

    invoke-static {v0, v2, v1}, Landroid/app/Notification;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInput;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1948
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .line 1937
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/Notification$Action;->icon:I

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 1939
    invoke-static {v1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1941
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getRemoteInputs()[Landroid/app/RemoteInput;
    .locals 1

    .line 1965
    iget-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    return-object v0
.end method

.method public getSemanticAction()I
    .locals 1

    .line 1974
    iget v0, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    return v0
.end method

.method public isAuthenticationRequired()Z
    .locals 1

    .line 2008
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    return v0
.end method

.method public isContextual()Z
    .locals 1

    .line 1983
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 2274
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2276
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2277
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2279
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2281
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2282
    iget-object v0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 2283
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2284
    iget-object v0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2286
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2288
    :goto_1
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2289
    iget-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2290
    iget-boolean p2, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2291
    iget p2, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    iget-boolean p2, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    iget-boolean p2, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
