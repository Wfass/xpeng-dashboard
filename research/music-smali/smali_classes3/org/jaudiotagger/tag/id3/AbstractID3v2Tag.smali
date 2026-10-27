.class public abstract Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3Tag;
.source "AbstractID3v2Tag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    }
.end annotation


# static fields
.field public static final FIELD_TAGID_LENGTH:I = 0x3

.field protected static final FIELD_TAGID_POS:I = 0x0

.field public static final FIELD_TAG_FLAG_LENGTH:I = 0x1

.field protected static final FIELD_TAG_FLAG_POS:I = 0x5

.field public static final FIELD_TAG_MAJOR_VERSION_LENGTH:I = 0x1

.field public static final FIELD_TAG_MAJOR_VERSION_POS:I = 0x3

.field public static final FIELD_TAG_MINOR_VERSION_LENGTH:I = 0x1

.field protected static final FIELD_TAG_MINOR_VERSION_POS:I = 0x4

.field public static final FIELD_TAG_SIZE_LENGTH:I = 0x4

.field protected static final FIELD_TAG_SIZE_POS:I = 0x6

.field private static final MAXIMUM_WRITABLE_CHUNK_SIZE:J = 0x989680L

.field public static final TAGID:Ljava/lang/String; = "ID3"

.field public static final TAG_HEADER_LENGTH:I = 0xa

.field public static final TAG_ID:[B

.field protected static final TAG_SIZE_INCREMENT:I = 0x64

.field protected static final TYPE_BODY:Ljava/lang/String; = "body"

.field protected static final TYPE_DUPLICATEBYTES:Ljava/lang/String; = "duplicateBytes"

.field protected static final TYPE_DUPLICATEFRAMEID:Ljava/lang/String; = "duplicateFrameId"

.field protected static final TYPE_EMPTYFRAMEBYTES:Ljava/lang/String; = "emptyFrameBytes"

.field protected static final TYPE_FILEREADSIZE:Ljava/lang/String; = "fileReadSize"

.field protected static final TYPE_HEADER:Ljava/lang/String; = "header"

.field protected static final TYPE_INVALIDFRAMES:Ljava/lang/String; = "invalidFrames"


# instance fields
.field protected duplicateBytes:I

.field protected duplicateFrameId:Ljava/lang/String;

.field protected emptyFrameBytes:I

.field public encryptedFrameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private endLocationInFile:Ljava/lang/Long;

.field protected fileReadSize:I

.field public frameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected invalidFrames:I

.field private startLocationInFile:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 68
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->startLocationInFile:Ljava/lang/Long;

    .line 62
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->endLocationInFile:Ljava/lang/Long;

    .line 93
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 98
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 104
    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 116
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 122
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 128
    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    return-void
.end method

.method protected constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;-><init>()V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->startLocationInFile:Ljava/lang/Long;

    .line 62
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->endLocationInFile:Ljava/lang/Long;

    .line 93
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 98
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    const-string p1, ""

    .line 104
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 116
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 122
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 128
    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    return-void
.end method

.method private addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;",
            "Ljava/util/HashMap;",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ")V"
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 694
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 705
    :goto_0
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 707
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 709
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 710
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 712
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    .line 713
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 715
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->addTextValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v2, :cond_b

    .line 722
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addNewFrameToMap(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto/16 :goto_3

    .line 725
    :cond_3
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v1, :cond_6

    .line 727
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 729
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 730
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 732
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    .line 733
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 735
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getUrlLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->addUrlLink(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    if-nez v2, :cond_b

    .line 742
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addNewFrameToMap(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto/16 :goto_3

    .line 745
    :cond_6
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz v0, :cond_7

    .line 747
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 748
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 749
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->addTextValue(Ljava/lang/String;)V

    goto :goto_3

    .line 751
    :cond_7
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    if-eqz v0, :cond_8

    .line 753
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    .line 754
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    .line 755
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->addPair(Ljava/lang/String;)V

    goto :goto_3

    .line 757
    :cond_8
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    if-eqz v0, :cond_a

    .line 759
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    .line 760
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    .line 762
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumber()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumber()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_9

    .line 764
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumberAsText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setNumber(Ljava/lang/String;)V

    .line 767
    :cond_9
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotal()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotal()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_b

    .line 769
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotalAsText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setTotal(Ljava/lang/String;)V

    goto :goto_3

    .line 774
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addNewFrameToMap(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private addNewFrameToMap(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;",
            "Ljava/util/HashMap;",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ")V"
        }
    .end annotation

    .line 668
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 670
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {p4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 676
    :cond_0
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private deleteNumberTotalFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Lorg/jaudiotagger/tag/FieldKey;Lorg/jaudiotagger/tag/FieldKey;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2612
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 2614
    invoke-virtual {p0, p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p2

    .line 2615
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 2617
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 2622
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 2623
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    .line 2624
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setNumber(Ljava/lang/Integer;)V

    return-void

    .line 2630
    :cond_1
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p2

    .line 2631
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    .line 2633
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 2638
    :cond_2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 2639
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    .line 2640
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setTotal(Ljava/lang/Integer;)V

    return-void
.end method

.method private getTextValueForFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;
    .locals 0

    .line 471
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getUserFriendlyValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getV2TagSizeIfExists(Ljava/io/File;)J
    .locals 6

    const/4 v0, 0x0

    .line 1187
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1188
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/16 p0, 0xa

    .line 1191
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1192
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 1193
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1194
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    if-ge v3, p0, :cond_1

    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1208
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-wide v4

    :cond_1
    if-eqz v0, :cond_2

    .line 1203
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1208
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x3

    .line 1213
    new-array v1, v0, [B

    const/4 v3, 0x0

    .line 1214
    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1215
    sget-object v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return-wide v4

    .line 1221
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    return-wide v4

    .line 1228
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 1231
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 1234
    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_5

    .line 1203
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 1208
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1210
    :cond_6
    throw p0
.end method

.method private static isID3V2Header(Ljava/io/RandomAccessFile;)Z
    .locals 3

    .line 139
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 140
    new-array v2, v2, [B

    .line 141
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 142
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 143
    sget-object p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isID3V2Header(Ljava/nio/channels/FileChannel;)Z
    .locals 3

    .line 152
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 153
    invoke-static {p0, v2}, Lorg/jaudiotagger/audio/generic/Utils;->readFileDataIntoBufferBE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 154
    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 155
    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->readThreeBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ID3"

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isId3Tag(Ljava/io/RandomAccessFile;)Z
    .locals 5

    .line 172
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->isID3V2Header(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 177
    new-array v0, v0, [B

    .line 178
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    add-long/2addr v1, v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 180
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    .line 183
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isId3Tag(Ljava/nio/channels/FileChannel;)Z
    .locals 5

    .line 196
    invoke-static {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->isID3V2Header(Ljava/nio/channels/FileChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 201
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    add-long/2addr v1, v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 203
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 204
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 205
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    .line 206
    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 p0, 0x1

    return p0
.end method

.method private replaceFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8

    .line 1538
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    .line 1541
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1543
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_0

    .line 1547
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 1556
    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1561
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1563
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_NEW_FILE_DOESNT_EXIST:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1567
    :cond_1
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1571
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_BACKUP_TO_ORIGINAL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1575
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1577
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_TO_ORIGINAL_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1582
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1586
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_WARNING_UNABLE_TO_DELETE_BACKUP_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p2, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 1550
    :cond_5
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 1552
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_RENAME_ORIGINAL_FILE_TO_BACKUP:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .line 1789
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getPreferredFrameOrderComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1790
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 1793
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1795
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1796
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_1

    .line 1798
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1799
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {v1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 1802
    :cond_1
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    if-eqz v2, :cond_2

    .line 1804
    check-cast v1, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    .line 1805
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AggregatedFrame;->getFrames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1807
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v2, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 1813
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 1814
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1816
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v2, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->write(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public varargs addField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0

    .line 534
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 535
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 840
    :cond_0
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-nez v0, :cond_2

    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 842
    :cond_1
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not of type AbstractID3v2Frame or AggregatedFrame"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 847
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 849
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 854
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 857
    :cond_3
    instance-of p1, v1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 859
    check-cast v1, Ljava/util/List;

    .line 860
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 865
    :cond_4
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 866
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 867
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addNewFrameOrAddField(Ljava/util/List;Ljava/util/HashMap;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 872
    :cond_5
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 3030
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method protected abstract addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
.end method

.method public adjustPadding(Ljava/io/File;IJ)V
    .locals 29

    move-object/from16 v1, p1

    move/from16 v0, p2

    move-wide/from16 v2, p3

    const-string v4, "Problem closing channels and locks:"

    .line 1308
    sget-object v5, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    const-string v6, "Need to move audio file to accommodate tag"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1313
    new-array v5, v0, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x2

    .line 1320
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/jaudiotagger/audio/generic/Utils;->getBaseFilenameForTempFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".new"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 1321
    sget-object v10, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Created temp file:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1341
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v11, 0x0

    .line 1355
    :try_start_2
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15
    :try_end_2
    .catch Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1358
    :try_start_3
    invoke-virtual {v10, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    int-to-long v13, v5

    .line 1361
    sget-object v5, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Copying:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v16

    sub-long v7, v16, v2

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "bytes"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_3
    .catch Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    sub-long/2addr v7, v2

    const-wide/32 v18, 0x989680

    cmp-long v5, v7, v18

    const-string v12, " Data:"

    const-string v11, "Written padding:"

    if-gtz v5, :cond_1

    .line 1368
    :try_start_4
    invoke-virtual {v15, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v2, v0

    move-object v0, v11

    move-object v11, v10

    move-object v5, v12

    move-object v12, v15

    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-wide v9, v13

    move-wide v13, v2

    move-object/from16 v21, v15

    move-wide v15, v7

    .line 1369
    :try_start_5
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    .line 1370
    sget-object v11, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    cmp-long v0, v2, v7

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1373
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_UNABLE_TO_ADJUST_PADDING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    invoke-virtual {v1, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    move-object/from16 v5, p0

    goto/16 :goto_7

    :cond_1
    move-object/from16 v17, v9

    move-object/from16 v20, v10

    move-object v0, v11

    move-object v5, v12

    move-wide v9, v13

    move-object/from16 v21, v15

    .line 1378
    div-long v22, v7, v18

    .line 1379
    rem-long v24, v7, v18

    const-wide/16 v11, 0x0

    move-wide/from16 v26, v11

    const/4 v14, 0x0

    :goto_0
    int-to-long v11, v14

    cmp-long v13, v11, v22

    if-gez v13, :cond_2

    mul-long v11, v11, v18

    add-long v12, v2, v11

    const-wide/32 v15, 0x989680

    move-object/from16 v11, v21

    move/from16 v28, v14

    move-wide v14, v15

    move-object/from16 v16, v20

    .line 1383
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v11

    add-long v26, v26, v11

    add-int/lit8 v14, v28, 0x1

    goto :goto_0

    :cond_2
    mul-long v22, v22, v18

    add-long v12, v2, v22

    move-object/from16 v11, v21

    move-wide/from16 v14, v24

    move-object/from16 v16, v20

    .line 1385
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    add-long v2, v26, v2

    .line 1386
    sget-object v11, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    cmp-long v0, v2, v7

    if-nez v0, :cond_7

    .line 1394
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    if-eqz v21, :cond_3

    .line 1399
    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1401
    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz v20, :cond_4

    .line 1407
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1409
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    move-object/from16 v5, p0

    move-object/from16 v9, v17

    .line 1414
    :try_start_6
    invoke-direct {v5, v1, v9}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->replaceFile(Ljava/io/File;Ljava/io/File;)V

    .line 1418
    invoke-virtual {v9, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_6
    .catch Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v21, :cond_5

    .line 1432
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1434
    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz v20, :cond_6

    .line 1440
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1442
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 1448
    :goto_3
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    move-object/from16 v5, p0

    move-object/from16 v9, v17

    .line 1389
    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP3_UNABLE_TO_ADJUST_PADDING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Lorg/jaudiotagger/audio/exceptions/UnableToRenameFileException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v5, p0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v9, v17

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    :goto_6
    move-object v1, v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    :goto_7
    move-object/from16 v11, v21

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v20, v10

    :goto_8
    move-object v1, v0

    move-object/from16 v21, v11

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v20, v10

    .line 1422
    :goto_9
    :try_start_9
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1423
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_8

    :goto_a
    if-eqz v21, :cond_8

    .line 1432
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1434
    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_c

    :cond_8
    :goto_b
    if-eqz v20, :cond_9

    .line 1440
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1442
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_d

    .line 1448
    :goto_c
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1450
    :cond_9
    :goto_d
    throw v1

    :catch_7
    move-exception v0

    move-object/from16 v5, p0

    .line 1346
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1347
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_MODIFY_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v3, v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_MODIFY_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    move-object/from16 v5, p0

    .line 1326
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1327
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jaudiotagger/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/jaudiotagger/logging/FileSystemMessage;

    invoke-virtual {v2}, Lorg/jaudiotagger/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1329
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v3, v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1330
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1334
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1335
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_CREATE_TEMPORARY_FILE_IN_FOLDER:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calculateTagSize(II)I
    .locals 0

    if-gt p1, p2, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, 0x64

    return p1
.end method

.method protected abstract convertFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ">;"
        }
    .end annotation
.end method

.method protected final copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 2

    .line 1615
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1617
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1618
    instance-of v1, v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v1, :cond_0

    .line 1620
    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0, p2, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->processDuplicateFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 1622
    :cond_0
    instance-of v1, v0, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    if-eqz v1, :cond_1

    .line 1624
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicated Aggregate Frame, ignoring:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 1626
    :cond_1
    instance-of p1, v0, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1628
    check-cast v0, Ljava/util/List;

    .line 1629
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1633
    :cond_2
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown frame class:discarding:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 1638
    :cond_3
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 3

    .line 251
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 252
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 255
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 257
    check-cast v1, Ljava/lang/String;

    .line 258
    iget-object v2, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 260
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_1

    .line 262
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 264
    :cond_1
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    if-eqz v2, :cond_2

    .line 266
    check-cast v1, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->getFrames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 268
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 272
    :cond_2
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 274
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 276
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    .line 234
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying Primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 236
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 237
    iget v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    .line 238
    iget v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    .line 239
    iget v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    iput v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    .line 240
    iget p1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    return-void
.end method

.method public createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    if-eqz p1, :cond_0

    .line 3066
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 3070
    :cond_0
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 2277
    aget-object v1, p2, v0

    if-eqz v1, :cond_2

    .line 2282
    aget-object v0, p2, v0

    .line 2283
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v1

    .line 2287
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isNumber(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2289
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object p1

    .line 2290
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    .line 2291
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setNumber(Ljava/lang/String;)V

    return-object p1

    .line 2294
    :cond_0
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isTotal(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2296
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object p1

    .line 2297
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    .line 2298
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setTotal(Ljava/lang/String;)V

    return-object p1

    .line 2303
    :cond_1
    invoke-virtual {p0, v1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 2279
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2274
    :cond_3
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public abstract createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
.end method

.method public createLinkedArtworkField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 8

    .line 2580
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 2581
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    const-string v2, ""

    const-string v3, "Description"

    const-string v4, "-->"

    const-string v5, "PictureType"

    const-string v6, "PictureData"

    if-eqz v1, :cond_0

    .line 2583
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 2584
    sget-object v7, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, v6, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2585
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v5, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "MIMEType"

    .line 2586
    invoke-virtual {v1, p1, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2587
    invoke-virtual {v1, v3, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2589
    :cond_0
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

    if-eqz v1, :cond_1

    .line 2591
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

    .line 2592
    sget-object v7, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, v6, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2593
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v5, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "ImageType"

    .line 2594
    invoke-virtual {v1, p1, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2595
    invoke-virtual {v1, v3, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public createStructure()V
    .locals 0

    .line 1831
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 1832
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    return-void
.end method

.method public createStructureBody()V
    .locals 4

    .line 1846
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "body"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1851
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v3, :cond_1

    .line 1853
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1854
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->createStructure()V

    goto :goto_0

    .line 1858
    :cond_1
    check-cast v2, Ljava/util/ArrayList;

    .line 1859
    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1861
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1862
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->createStructure()V

    goto :goto_1

    .line 1866
    :cond_2
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public createStructureHeader()V
    .locals 3

    .line 1837
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    const-string v2, "duplicateBytes"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1838
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    const-string v2, "duplicateFrameId"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    const-string v2, "emptyFrameBytes"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1840
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    const-string v2, "fileReadSize"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1841
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    const-string v2, "invalidFrames"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    return-void
.end method

.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 5

    const/4 v0, 0x3

    .line 963
    new-array v0, v0, [B

    .line 965
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 966
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    const/16 v2, 0xa

    .line 967
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 968
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 969
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 970
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 973
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_0
    return-void
.end method

.method public deleteArtworkField()V
    .locals 1

    .line 3040
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 3

    .line 2654
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2660
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$2;->$SwitchMap$org$jaudiotagger$tag$FieldKey:[I

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2681
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    goto :goto_0

    .line 2678
    :pswitch_0
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteNumberTotalFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Lorg/jaudiotagger/tag/FieldKey;Lorg/jaudiotagger/tag/FieldKey;Z)V

    goto :goto_0

    .line 2675
    :pswitch_1
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteNumberTotalFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Lorg/jaudiotagger/tag/FieldKey;Lorg/jaudiotagger/tag/FieldKey;Z)V

    goto :goto_0

    .line 2672
    :pswitch_2
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteNumberTotalFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Lorg/jaudiotagger/tag/FieldKey;Lorg/jaudiotagger/tag/FieldKey;Z)V

    goto :goto_0

    .line 2669
    :pswitch_3
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteNumberTotalFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Lorg/jaudiotagger/tag/FieldKey;Lorg/jaudiotagger/tag/FieldKey;Z)V

    goto :goto_0

    .line 2666
    :pswitch_4
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteNumberTotalFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Lorg/jaudiotagger/tag/FieldKey;Lorg/jaudiotagger/tag/FieldKey;Z)V

    goto :goto_0

    .line 2663
    :pswitch_5
    sget-object p1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->deleteNumberTotalFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;Lorg/jaudiotagger/tag/FieldKey;Lorg/jaudiotagger/tag/FieldKey;Z)V

    :goto_0
    return-void

    .line 2657
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected varargs doCreateTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 6

    const/4 v0, 0x0

    .line 2321
    aget-object v1, p2, v0

    .line 2323
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object v2

    .line 2324
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    if-eqz v3, :cond_0

    .line 2326
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->setOwner(Ljava/lang/String;)V

    .line 2329
    :try_start_0
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    const-string p2, "ISO-8859-1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->setUniqueIdentifier([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2335
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "When encoding UFID charset ISO-8859-1 was deemed unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2338
    :cond_0
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v3, :cond_1

    .line 2340
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->setDescription(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2343
    :cond_1
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v3, :cond_2

    .line 2345
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->setDescription(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->setUrlLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2348
    :cond_2
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v3, :cond_4

    .line 2351
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2353
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->setDescription(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->isMediaMonkeyFrame()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2357
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string p2, "XXX"

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->setLanguage(Ljava/lang/String;)V

    .line 2360
    :cond_3
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2362
    :cond_4
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    if-eqz v3, :cond_5

    .line 2364
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->setDescription(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->setLyric(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2367
    :cond_5
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAR;

    if-eqz v3, :cond_6

    .line 2369
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAR;

    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWOAR;->setUrlLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2371
    :cond_6
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz v3, :cond_7

    .line 2373
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2375
    :cond_7
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    if-eqz v3, :cond_8

    .line 2377
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->parseString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2379
    :cond_8
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_b

    .line 2381
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2383
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2387
    :cond_9
    array-length p1, p2

    if-lt p1, v5, :cond_a

    .line 2389
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    aget-object v0, p2, v0

    aget-object p2, p2, v4

    invoke-virtual {p1, v0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2393
    :cond_a
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->addPair(Ljava/lang/String;)V

    goto :goto_0

    .line 2397
    :cond_b
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v3, :cond_c

    .line 2399
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2401
    :cond_c
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    if-eqz v3, :cond_e

    .line 2403
    array-length p1, p2

    if-lt p1, v5, :cond_d

    .line 2405
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    aget-object v0, p2, v0

    aget-object p2, p2, v4

    invoke-virtual {p1, v0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;->addPair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2409
    :cond_d
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;->addPair(Ljava/lang/String;)V

    :goto_0
    return-object v2

    .line 2412
    :cond_e
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    instance-of p2, p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    if-nez p2, :cond_10

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    instance-of p2, p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPIC;

    if-eqz p2, :cond_f

    goto :goto_1

    .line 2418
    :cond_f
    new-instance p2, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field with key of:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":does not accept cannot parse data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2414
    :cond_10
    :goto_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V
    .locals 6

    .line 2694
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2697
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2698
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 2699
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2701
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    .line 2702
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 2704
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2706
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2708
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 2712
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 2716
    :cond_2
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v3, :cond_4

    .line 2718
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2720
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 2722
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 2726
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 2730
    :cond_4
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v3, :cond_6

    .line 2732
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2734
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 2736
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 2740
    :cond_5
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    .line 2744
    :cond_6
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    if-eqz v3, :cond_8

    .line 2746
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2748
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 2750
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2754
    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    .line 2760
    :cond_8
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v3, :cond_b

    .line 2762
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v2

    .line 2763
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 2764
    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2766
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 2767
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2769
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 2772
    :cond_a
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2774
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2779
    :cond_b
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v3, :cond_e

    .line 2781
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v2

    .line 2782
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 2783
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2785
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 2786
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2788
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    .line 2792
    :cond_d
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2794
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2799
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need to implement getFields(FieldKey genericKey) for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2803
    :cond_f
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getGenericKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2804
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getGenericKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER:Lorg/jaudiotagger/tag/FieldKey;

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getGenericKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->INVOLVED_PERSON:Lorg/jaudiotagger/tag/FieldKey;

    if-ne v0, v1, :cond_14

    .line 2807
    :cond_10
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2808
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 2809
    :cond_11
    :goto_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2811
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    .line 2812
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    if-eqz v2, :cond_11

    .line 2814
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v1

    .line 2815
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 2816
    :cond_12
    :goto_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2818
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 2819
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jaudiotagger/tag/id3/valuepair/StandardIPLSKey;->isKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2821
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 2825
    :cond_13
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 2827
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    goto :goto_3

    .line 2833
    :cond_14
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    .line 2835
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->removeFrame(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method protected doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;
    .locals 1

    .line 2563
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValues(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)Ljava/util/List;

    move-result-object p1

    .line 2564
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 2566
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected doGetValues(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2436
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2439
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2440
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 2441
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2443
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    .line 2445
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v3, :cond_1

    .line 2447
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2449
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2452
    :cond_1
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v3, :cond_2

    .line 2454
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2456
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getUrlLinks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2459
    :cond_2
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v3, :cond_3

    .line 2461
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2463
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2466
    :cond_3
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    if-eqz v3, :cond_4

    .line 2468
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2470
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getUniqueIdentifier()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2472
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getUniqueIdentifier()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2476
    :cond_4
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    if-eqz v3, :cond_6

    .line 2478
    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 2480
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2482
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2484
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2491
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need to implement getFields(FieldKey genericKey) for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2496
    :cond_7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getGenericKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 2497
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getGenericKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER:Lorg/jaudiotagger/tag/FieldKey;

    if-eq v1, v2, :cond_8

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getGenericKey()Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->INVOLVED_PERSON:Lorg/jaudiotagger/tag/FieldKey;

    if-ne v1, v2, :cond_c

    .line 2500
    :cond_8
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2501
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 2502
    :cond_9
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2504
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    .line 2505
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    if-eqz v2, :cond_9

    .line 2507
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 2509
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jaudiotagger/tag/id3/valuepair/StandardIPLSKey;->isKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2511
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2513
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2515
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Pair;->getPairValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2519
    :cond_b
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2530
    :cond_c
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2531
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagField;

    .line 2533
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v1, :cond_d

    .line 2536
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz v2, :cond_e

    .line 2538
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 2539
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 2543
    :cond_e
    invoke-direct {p0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getTextValueForFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 985
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 989
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    .line 990
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3Tag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v1

    .line 1883
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isNumber(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 1885
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1887
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1888
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumberAsText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    .line 1892
    :cond_1
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isTotal(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 1894
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1896
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1897
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotalAsText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    .line 1901
    :cond_3
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_5

    if-eqz v1, :cond_4

    .line 1903
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1905
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1906
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->getRating()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0

    .line 1912
    :cond_5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValues(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDuplicateBytes()I
    .locals 1

    .line 304
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    return v0
.end method

.method public getDuplicateFrameId()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmptyFrameBytes()I
    .locals 1

    .line 325
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    return v0
.end method

.method public getEncryptedFrame(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEndLocationInFile()Ljava/lang/Long;
    .locals 1

    .line 3086
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->endLocationInFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 3

    .line 2122
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2131
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return v1
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 4

    .line 2150
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2159
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 2160
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v3, :cond_0

    .line 2162
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 2163
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    instance-of v3, v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    if-nez v3, :cond_0

    .line 2165
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 2166
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getNumberOfValues()I

    move-result v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return v1
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 2010
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2013
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2016
    new-instance v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$1;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1921
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1924
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1926
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1929
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 1931
    :cond_1
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v0, :cond_2

    .line 1933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1934
    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1939
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found entry in frameMap that was not a frame or a list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 2858
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    .line 2861
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2862
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2863
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 2867
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/TagField;

    .line 2869
    move-object v4, v3

    check-cast v4, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v4

    .line 2870
    instance-of v5, v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v5, :cond_1

    .line 2872
    check-cast v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2874
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2877
    :cond_1
    instance-of v5, v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v5, :cond_2

    .line 2879
    check-cast v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2881
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2884
    :cond_2
    instance-of v5, v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v5, :cond_3

    .line 2886
    check-cast v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2888
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2891
    :cond_3
    instance-of v5, v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    if-eqz v5, :cond_4

    .line 2893
    check-cast v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2895
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2898
    :cond_4
    instance-of v5, v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    if-eqz v5, :cond_6

    .line 2900
    check-cast v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 2902
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2904
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2908
    :cond_6
    instance-of v5, v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v5, :cond_8

    .line 2910
    check-cast v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 2912
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getSubId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2914
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2918
    :cond_8
    instance-of p1, v4, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz p1, :cond_9

    return-object v1

    .line 2924
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need to implement getFields(FieldKey genericKey) for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-object v2

    .line 2929
    :cond_b
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isNumber(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2931
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 2933
    move-object v1, v0

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    .line 2934
    instance-of v3, v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    if-eqz v3, :cond_c

    .line 2936
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumber()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 2938
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    return-object v2

    .line 2944
    :cond_e
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isTotal(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2946
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 2948
    move-object v1, v0

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    .line 2949
    instance-of v3, v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    if-eqz v3, :cond_f

    .line 2951
    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotal()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2953
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    return-object v2

    :cond_11
    return-object v1

    .line 2856
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;
    .locals 3

    .line 1087
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locking fileChannel for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1091
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p1

    .line 1107
    :cond_0
    new-instance p1, Ljava/io/IOException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_FILE_LOCKED:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    return-object v0
.end method

.method public getFileReadBytes()I
    .locals 1

    .line 345
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    return v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 457
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 462
    :cond_0
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getTextValueForFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2196
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/images/Artwork;
    .locals 2

    .line 3003
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    .line 3004
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3006
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/images/Artwork;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 476
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 477
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 479
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
    .locals 1

    .line 493
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 498
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 500
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    return-object p1

    .line 504
    :cond_1
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    return-object p1
.end method

.method public getFrame(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
.end method

.method public getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4

    .line 926
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 927
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 929
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 931
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 932
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 935
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 937
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 939
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 944
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 948
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getID3Frames()Lorg/jaudiotagger/tag/id3/ID3Frames;
.end method

.method public getInvalidFrames()I
    .locals 1

    .line 335
    iget v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    return v0
.end method

.method public abstract getPreferredFrameOrderComparator()Ljava/util/Comparator;
.end method

.method public getSize()I
    .locals 4

    .line 1731
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1733
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1735
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1736
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v3, :cond_1

    .line 1738
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1739
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1741
    :cond_1
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    if-eqz v3, :cond_2

    .line 1743
    check-cast v2, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    .line 1744
    iget-object v2, v2, Lorg/jaudiotagger/tag/id3/AggregatedFrame;->frames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1746
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 1749
    :cond_2
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1751
    check-cast v2, Ljava/util/ArrayList;

    .line 1752
    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1754
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1755
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2

    :cond_3
    return v1
.end method

.method public getStartLocationInFile()Ljava/lang/Long;
    .locals 1

    .line 3076
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->startLocationInFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_6

    .line 2217
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isNumber(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isTotal(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2241
    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_4

    .line 2243
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 2246
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 2247
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->getRating()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 2219
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    .line 2224
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 2225
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isNumber(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2227
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumberAsText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2229
    :cond_3
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->isTotal(Lorg/jaudiotagger/tag/FieldKey;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2231
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotalAsText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2255
    :cond_4
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    .line 2256
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1

    .line 2212
    :cond_6
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public hasCommonFields()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 0

    .line 1990
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1974
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1
    :try_end_0
    .catch Lorg/jaudiotagger/tag/KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 1978
    sget-object v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    .line 1969
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasFrame(Ljava/lang/String;)Z
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasFrameAndBody(Ljava/lang/String;)Z
    .locals 3

    .line 378
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 381
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 383
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public hasFrameOfType(Ljava/lang/String;)Z
    .locals 3

    .line 401
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 404
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 407
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 2000
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1001
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .line 1650
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyEncrypted;

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 1656
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    :goto_0
    return-void
.end method

.method protected loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    .line 1673
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1674
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1675
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v22Frames;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1703
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1705
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring Duplicate Frame:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1707
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 1709
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1711
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1712
    iget p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    iget-object p3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->duplicateBytes:I

    goto/16 :goto_1

    .line 1716
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1678
    :cond_3
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1680
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1681
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1683
    check-cast v0, Ljava/util/ArrayList;

    .line 1684
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding Multi Frame(1)"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 1689
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding Multi Frame(2)"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 1698
    :cond_5
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Multi FrameList(3)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public mergeDuplicateFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ">;)V"
        }
    .end annotation

    .line 570
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 572
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 574
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 580
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 584
    :cond_1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    if-eqz v2, :cond_2

    .line 587
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyWXXX;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 590
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 594
    :cond_2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    if-eqz v2, :cond_3

    .line 596
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 603
    :cond_3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    if-eqz v2, :cond_4

    .line 605
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUFID;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 612
    :cond_4
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    if-eqz v2, :cond_5

    .line 614
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUSLT;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 621
    :cond_5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    if-eqz v2, :cond_6

    .line 623
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->getEmailToUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyPOPM;->getEmailToUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 631
    :cond_6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    if-eqz v2, :cond_7

    .line 633
    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->mergeNumberTotalFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void

    .line 637
    :cond_7
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    if-eqz v2, :cond_0

    .line 639
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    .line 640
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;

    .line 641
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->addPair(Ljava/lang/String;)V

    return-void

    .line 646
    :cond_8
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getID3Frames()Lorg/jaudiotagger/tag/id3/ID3Frames;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/id3/ID3Frames;->isMultipleAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 648
    iget-object p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 653
    :cond_9
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public mergeNumberTotalFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .line 547
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    .line 548
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;

    .line 550
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 552
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getNumberAsText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setNumber(Ljava/lang/String;)V

    .line 555
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotal()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotal()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 557
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->getTotalAsText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyNumberTotal;->setTotal(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected processDuplicateFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .line 1600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    iget-object p2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeFrame(Ljava/lang/String;)V
    .locals 3

    .line 1011
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing frame with identifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeFrameOfType(Ljava/lang/String;)V
    .locals 5

    .line 1044
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1045
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1047
    check-cast v2, Ljava/lang/String;

    .line 1048
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1050
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1055
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1057
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing frame with identifier:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "because starts with:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1058
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeUnsupportedFrames()V
    .locals 5

    .line 1022
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1024
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1025
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_0

    .line 1027
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    instance-of v2, v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v2, :cond_0

    .line 1029
    sget-object v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1030
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 1249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1250
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteBuffer pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":cap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1253
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1254
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1255
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 1260
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getMajorVersion()B

    move-result v1

    if-eq v0, v1, :cond_1

    return v2

    .line 1265
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getRevision()B

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .line 2185
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not Implemented Yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEndLocationInFile(J)V
    .locals 0

    .line 3091
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->endLocationInFile:Ljava/lang/Long;

    return-void
.end method

.method public varargs setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0

    .line 528
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 529
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 3

    .line 786
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-nez v0, :cond_1

    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not of type AbstractID3v2Frame nor AggregatedFrame"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 793
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 795
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 801
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 804
    :cond_2
    instance-of p1, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz p1, :cond_3

    .line 806
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 807
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->mergeDuplicateFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V

    goto :goto_1

    .line 811
    :cond_3
    instance-of p1, v1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 813
    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->mergeDuplicateFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V

    goto :goto_1

    .line 819
    :cond_4
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 3019
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setFrame(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ">;)V"
        }
    .end annotation

    .line 888
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frames for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStartLocationInFile(J)V
    .locals 0

    .line 3081
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->startLocationInFile:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag content:\n"

    .line 3047
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .line 3049
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3051
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    const-string v3, "\t"

    .line 3052
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 3054
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 3056
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3059
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Ljava/io/File;J)J
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    .line 1140
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method

.method public write(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1151
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 0

    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 0

    return-void
.end method

.method protected writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V
    .locals 3

    int-to-long v0, p5

    cmp-long v0, v0, p6

    if-lez v0, :cond_0

    .line 1472
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Adjusting Padding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p0, p1, p5, p6, p7}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->adjustPadding(Ljava/io/File;IJ)V

    :cond_0
    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x1

    .line 1478
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1479
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;

    move-result-object p5

    .line 1480
    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1481
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1482
    new-array p2, p4, [B

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_1

    .line 1518
    invoke-virtual {p5}, Ljava/nio/channels/FileLock;->release()V

    .line 1520
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    move-object p3, p5

    move-object p5, v0

    goto/16 :goto_3

    :catch_0
    move-exception p2

    move-object p3, p5

    move-object p5, v0

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p3, p5

    move-object p5, v0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    move-object p3, p5

    goto/16 :goto_3

    :catch_2
    move-exception p2

    move-object p3, p5

    .line 1500
    :goto_0
    :try_start_2
    sget-object p4, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1501
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lorg/jaudiotagger/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/jaudiotagger/logging/FileSystemMessage;

    invoke-virtual {p4}, Lorg/jaudiotagger/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1503
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, p7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p6

    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1504
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;

    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array p7, p7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p7, p6

    invoke-virtual {p4, p7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1508
    :cond_3
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, p7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p6

    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1509
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;

    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array p7, p7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p7, p6

    invoke-virtual {p4, p7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_3
    move-exception p2

    move-object p3, p5

    .line 1486
    :goto_1
    sget-object p4, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1487
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lorg/jaudiotagger/logging/FileSystemMessage;->ACCESS_IS_DENIED:Lorg/jaudiotagger/logging/FileSystemMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lorg/jaudiotagger/logging/FileSystemMessage;->PERMISSION_DENIED:Lorg/jaudiotagger/logging/FileSystemMessage;

    invoke-virtual {p4}, Lorg/jaudiotagger/logging/FileSystemMessage;->getMsg()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    .line 1494
    :cond_4
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, p7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p6

    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1495
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;

    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array p7, p7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p7, p6

    invoke-virtual {p4, p7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToCreateFileException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1489
    :cond_5
    :goto_2
    sget-object p2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->logger:Ljava/util/logging/Logger;

    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, p7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p6

    invoke-virtual {p4, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1490
    new-instance p2, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;

    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_WRITE_FAILED_TO_OPEN_FILE_FOR_EDITING:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array p7, p7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p7, p6

    invoke-virtual {p4, p7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/audio/exceptions/UnableToModifyFileException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    :goto_3
    if-eqz p5, :cond_7

    if-eqz p3, :cond_6

    .line 1518
    invoke-virtual {p3}, Ljava/nio/channels/FileLock;->release()V

    .line 1520
    :cond_6
    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->close()V

    .line 1522
    :cond_7
    throw p1
.end method

.method protected writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .line 1773
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1774
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    .line 1775
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBufferStream(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    return-object v0
.end method

.method protected writePadding(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 0

    if-lez p2, :cond_0

    .line 1166
    new-array p2, p2, [B

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    return-void
.end method
