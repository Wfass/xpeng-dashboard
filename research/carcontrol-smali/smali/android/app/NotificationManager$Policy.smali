.class public Landroid/app/NotificationManager$Policy;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Policy$ConversationSenders;,
        Landroid/app/NotificationManager$Policy$PrioritySenders;
    }
.end annotation


# static fields
.field public static final ALL_PRIORITY_CATEGORIES:[I

.field private static final ALL_SUPPRESSED_EFFECTS:[I

.field public static final CONVERSATION_SENDERS_ANYONE:I = 0x1

.field public static final CONVERSATION_SENDERS_IMPORTANT:I = 0x2

.field public static final CONVERSATION_SENDERS_NONE:I = 0x3

.field public static final CONVERSATION_SENDERS_UNSET:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_CATEGORY_ALARMS:I = 0x20

.field public static final PRIORITY_CATEGORY_CALLS:I = 0x8

.field public static final PRIORITY_CATEGORY_CONVERSATIONS:I = 0x100

.field public static final PRIORITY_CATEGORY_EVENTS:I = 0x2

.field public static final PRIORITY_CATEGORY_MEDIA:I = 0x40

.field public static final PRIORITY_CATEGORY_MESSAGES:I = 0x4

.field public static final PRIORITY_CATEGORY_REMINDERS:I = 0x1

.field public static final PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x10

.field public static final PRIORITY_CATEGORY_SYSTEM:I = 0x80

.field public static final PRIORITY_SENDERS_ANY:I = 0x0

.field public static final PRIORITY_SENDERS_CONTACTS:I = 0x1

.field public static final PRIORITY_SENDERS_STARRED:I = 0x2

.field public static final STATE_CHANNELS_BYPASSING_DND:I = 0x1

.field public static final STATE_UNSET:I = -0x1

.field public static final SUPPRESSED_EFFECTS_UNSET:I = -0x1

.field public static final SUPPRESSED_EFFECT_AMBIENT:I = 0x80

.field public static final SUPPRESSED_EFFECT_BADGE:I = 0x40

.field public static final SUPPRESSED_EFFECT_FULL_SCREEN_INTENT:I = 0x4

.field public static final SUPPRESSED_EFFECT_LIGHTS:I = 0x8

.field public static final SUPPRESSED_EFFECT_NOTIFICATION_LIST:I = 0x100

.field public static final SUPPRESSED_EFFECT_PEEK:I = 0x10

.field public static final SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPRESSED_EFFECT_STATUS_BAR:I = 0x20


# instance fields
.field public final priorityCallSenders:I

.field public final priorityCategories:I

.field public final priorityConversationSenders:I

.field public final priorityMessageSenders:I

.field public final state:I

.field public final suppressedVisualEffects:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 2033
    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    new-array v0, v0, [I

    .line 2174
    fill-array-data v0, :array_1

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    .line 2585
    new-instance v0, Landroid/app/NotificationManager$Policy$1;

    invoke-direct {v0}, Landroid/app/NotificationManager$Policy$1;-><init>()V

    sput-object v0, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x1
        0x2
        0x4
        0x8
        0x10
        0x100
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 7

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 2223
    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2257
    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 2300
    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 2306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2307
    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2308
    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 2309
    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 2310
    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2311
    iput p5, p0, Landroid/app/NotificationManager$Policy;->state:I

    .line 2312
    iput p6, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 2318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    .line 2318
    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-void
.end method

.method public static areAllVisualEffectsSuppressed(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2461
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2462
    aget v2, v2, v1

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-lez p3, :cond_1

    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_0

    .line 2441
    invoke-virtual {p0, p1, p2, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static conversationSendersToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidConversationType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "none"

    return-object p0

    :cond_1
    const-string p0, "important"

    return-object p0

    :cond_2
    const-string p0, "anyone"

    return-object p0

    :cond_3
    const-string/jumbo p0, "unset"

    return-object p0
.end method

.method private static effectToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x10

    if-eq p0, v0, :cond_6

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SUPPRESSED_EFFECT_SCREEN_ON"

    return-object p0

    :cond_1
    const-string p0, "SUPPRESSED_EFFECT_SCREEN_OFF"

    return-object p0

    :cond_2
    const-string p0, "SUPPRESSED_EFFECT_NOTIFICATION_LIST"

    return-object p0

    :cond_3
    const-string p0, "SUPPRESSED_EFFECT_AMBIENT"

    return-object p0

    :cond_4
    const-string p0, "SUPPRESSED_EFFECT_BADGE"

    return-object p0

    :cond_5
    const-string p0, "SUPPRESSED_EFFECT_STATUS_BAR"

    return-object p0

    :cond_6
    const-string p0, "SUPPRESSED_EFFECT_PEEK"

    return-object p0

    :cond_7
    const-string p0, "SUPPRESSED_EFFECT_LIGHTS"

    return-object p0

    :cond_8
    const-string p0, "SUPPRESSED_EFFECT_FULL_SCREEN_INTENT"

    return-object p0

    :cond_9
    const-string p0, "SUPPRESSED_EFFECTS_UNSET"

    return-object p0
.end method

.method public static getAllSuppressedVisualEffects()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2451
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2452
    aget v2, v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static priorityCategoriesToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2502
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2503
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    array-length v3, v2

    const/16 v4, 0x2c

    if-ge v1, v3, :cond_3

    .line 2504
    aget v2, v2, v1

    and-int v3, p0, v2

    if-eqz v3, :cond_2

    .line 2506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2507
    :cond_1
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->priorityCategoryToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    not-int v2, v2

    and-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    .line 2512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    .line 2513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2515
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static priorityCategoryToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0x10

    if-eq p0, v0, :cond_4

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "PRIORITY_CATEGORY_CONVERSATIONS"

    return-object p0

    :cond_1
    const-string p0, "PRIORITY_CATEGORY_SYSTEM"

    return-object p0

    :cond_2
    const-string p0, "PRIORITY_CATEGORY_MEDIA"

    return-object p0

    :cond_3
    const-string p0, "PRIORITY_CATEGORY_ALARMS"

    return-object p0

    :cond_4
    const-string p0, "PRIORITY_CATEGORY_REPEAT_CALLERS"

    return-object p0

    :cond_5
    const-string p0, "PRIORITY_CATEGORY_CALLS"

    return-object p0

    :cond_6
    const-string p0, "PRIORITY_CATEGORY_MESSAGES"

    return-object p0

    :cond_7
    const-string p0, "PRIORITY_CATEGORY_EVENTS"

    return-object p0

    :cond_8
    const-string p0, "PRIORITY_CATEGORY_REMINDERS"

    return-object p0
.end method

.method public static prioritySendersToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_SENDERS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "PRIORITY_SENDERS_STARRED"

    return-object p0

    :cond_1
    const-string p0, "PRIORITY_SENDERS_CONTACTS"

    return-object p0

    :cond_2
    const-string p0, "PRIORITY_SENDERS_ANY"

    return-object p0
.end method

.method public static suppressedEffectsToString(I)Ljava/lang/String;
    .locals 5

    if-gtz p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2485
    :goto_0
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v3, v2

    const/16 v4, 0x2c

    if-ge v1, v3, :cond_3

    .line 2486
    aget v2, v2, v1

    and-int v3, p0, v2

    if-eqz v3, :cond_2

    .line 2488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2489
    :cond_1
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->effectToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    not-int v2, v2

    and-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    .line 2494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "UNKNOWN_"

    .line 2495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2497
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private suppressedVisualEffectsEqual(II)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 p1, p1, 0x10

    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    or-int/lit8 p1, p1, 0x4

    or-int/lit8 p1, p1, 0x8

    or-int/lit16 p1, p1, 0x80

    :cond_2
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 p2, p2, 0x10

    :cond_3
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    or-int/lit8 p2, p2, 0x4

    or-int/lit8 p2, p2, 0x8

    or-int/lit16 p2, p2, 0x80

    :cond_4
    and-int/lit8 v1, p1, 0x2

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_5

    move v1, p2

    goto :goto_0

    :cond_5
    move v1, p1

    :goto_0
    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_6

    return v3

    :cond_6
    and-int/lit8 v1, p1, 0x1

    and-int/lit8 v2, p2, 0x1

    if-eq v1, v2, :cond_9

    if-eqz v1, :cond_7

    move v1, p2

    goto :goto_1

    :cond_7
    move v1, p1

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_8

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_8

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_9

    :cond_8
    return v3

    :cond_9
    and-int/lit8 p1, p1, -0x3

    and-int/lit8 p1, p1, -0x2

    and-int/lit8 p2, p2, -0x3

    and-int/lit8 p2, p2, -0x2

    if-ne p1, p2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v3

    :goto_2
    return v0
.end method

.method private static toggleEffects(I[IZ)I
    .locals 2

    const/4 v0, 0x0

    .line 2471
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2472
    aget v1, p1, v0

    if-eqz p2, :cond_0

    or-int/2addr p0, v1

    goto :goto_1

    :cond_0
    not-int v1, v1

    and-int/2addr p0, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method


# virtual methods
.method public allowAlarms()Z
    .locals 1

    .line 2600
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowCalls()Z
    .locals 1

    .line 2620
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowCallsFrom()I
    .locals 1

    .line 2645
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return v0
.end method

.method public allowConversations()Z
    .locals 1

    .line 2625
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowConversationsFrom()I
    .locals 1

    .line 2655
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    return v0
.end method

.method public allowEvents()Z
    .locals 1

    .line 2635
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowMedia()Z
    .locals 1

    .line 2605
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowMessages()Z
    .locals 1

    .line 2630
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowMessagesFrom()I
    .locals 1

    .line 2650
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return v0
.end method

.method public allowReminders()Z
    .locals 2

    .line 2640
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public allowRepeatCallers()Z
    .locals 1

    .line 2615
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowSystem()Z
    .locals 1

    .line 2610
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copy()Landroid/app/NotificationManager$Policy;
    .locals 2

    .line 2698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2700
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2701
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2702
    new-instance v1, Landroid/app/NotificationManager$Policy;

    invoke-direct {v1, v0}, Landroid/app/NotificationManager$Policy;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2705
    throw v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 2427
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2429
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const-wide v1, 0x20e00000001L

    invoke-static {p1, v1, v2, v0}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2430
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2431
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    const-wide v1, 0x10e00000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2432
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const-wide v1, 0x20e00000004L

    invoke-static {p1, v1, v2, v0}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2435
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 2345
    instance-of v0, p1, Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2347
    :cond_1
    check-cast p1, Landroid/app/NotificationManager$Policy;

    .line 2348
    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v3, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2351
    invoke-direct {p0, v2, v3}, Landroid/app/NotificationManager$Policy;->suppressedVisualEffectsEqual(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Landroid/app/NotificationManager$Policy;->state:I

    iget v3, p0, Landroid/app/NotificationManager$Policy;->state:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne p1, v2, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 2339
    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2339
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public showAmbient()Z
    .locals 1

    .line 2680
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showBadges()Z
    .locals 1

    .line 2685
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showFullScreenIntents()Z
    .locals 1

    .line 2660
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showInNotificationList()Z
    .locals 1

    .line 2690
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showLights()Z
    .locals 1

    .line 2665
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showPeeking()Z
    .locals 1

    .line 2670
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showStatusBarIcons()Z
    .locals 1

    .line 2675
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationManager.Policy[priorityCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2413
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",priorityCallSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 2414
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",priorityMessageSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 2415
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",priorityConvSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 2417
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->conversationSendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",suppressedVisualEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2419
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->suppressedEffectsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",areChannelsBypassingDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2420
    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    .line 2421
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2324
    iget p2, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2325
    iget p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2326
    iget p2, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2327
    iget p2, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    iget p2, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2329
    iget p2, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
