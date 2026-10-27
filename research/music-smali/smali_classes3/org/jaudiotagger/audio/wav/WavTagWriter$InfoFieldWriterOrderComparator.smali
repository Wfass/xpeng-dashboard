.class Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;
.super Ljava/lang/Object;
.source "WavTagWriter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/wav/WavTagWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoFieldWriterOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/jaudiotagger/tag/TagField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jaudiotagger/audio/wav/WavTagWriter;


# direct methods
.method constructor <init>(Lorg/jaudiotagger/audio/wav/WavTagWriter;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;->this$0:Lorg/jaudiotagger/audio/wav/WavTagWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 409
    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    check-cast p2, Lorg/jaudiotagger/tag/TagField;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/wav/WavTagWriter$InfoFieldWriterOrderComparator;->compare(Lorg/jaudiotagger/tag/TagField;Lorg/jaudiotagger/tag/TagField;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/jaudiotagger/tag/TagField;Lorg/jaudiotagger/tag/TagField;)I
    .locals 1

    .line 411
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getByByFieldKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object p1

    .line 412
    invoke-interface {p2}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object p2

    invoke-static {p2}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getByByFieldKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object p2

    const v0, 0x7fffffff

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getPreferredWriteOrder()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 419
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/wav/chunk/WavInfoIdentifier;->getPreferredWriteOrder()I

    move-result v0

    :cond_1
    sub-int/2addr p1, v0

    return p1
.end method
