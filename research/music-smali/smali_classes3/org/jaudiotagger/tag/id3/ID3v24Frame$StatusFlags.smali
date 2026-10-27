.class public Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
.source "ID3v24Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/ID3v24Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusFlags"
.end annotation


# static fields
.field public static final MASK_FILE_ALTER_PRESERVATION:I = 0x20

.field public static final MASK_READ_ONLY:I = 0x10

.field public static final MASK_TAG_ALTER_PRESERVATION:I = 0x40

.field public static final TYPE_FILEALTERPRESERVATION:Ljava/lang/String; = "typeFileAlterPreservation"

.field public static final TYPE_READONLY:Ljava/lang/String; = "typeReadOnly"

.field public static final TYPE_TAGALTERPRESERVATION:Ljava/lang/String; = "typeTagAlterPreservation"


# instance fields
.field final synthetic this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;


# direct methods
.method constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 830
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void
.end method

.method constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;B)V
    .locals 0

    .line 839
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 840
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->originalFlags:B

    .line 841
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    .line 842
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->modifyFlags()V

    return-void
.end method

.method constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 852
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$StatusFlags;->getOriginalFlags()B

    move-result p1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->convertV3ToV4Flags(B)B

    move-result p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->originalFlags:B

    .line 853
    iget-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->originalFlags:B

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    .line 854
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->modifyFlags()V

    return-void
.end method

.method private convertV3ToV4Flags(B)B
    .locals 1

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    or-int/lit8 p1, v0, 0x40

    int-to-byte v0, p1

    :cond_1
    return v0
.end method


# virtual methods
.method public createStructure()V
    .locals 4

    .line 897
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "statusFlags"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->originalFlags:B

    and-int/lit8 v2, v2, 0x40

    const-string v3, "typeTagAlterPreservation"

    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 899
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->originalFlags:B

    and-int/lit8 v2, v2, 0x20

    const-string v3, "typeFileAlterPreservation"

    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 900
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->originalFlags:B

    and-int/lit8 v2, v2, 0x10

    const-string v3, "typeReadOnly"

    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 901
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method protected modifyFlags()V
    .locals 2

    .line 882
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->isDiscardIfFileAltered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    .line 886
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    goto :goto_0

    .line 890
    :cond_0
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    .line 891
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    and-int/lit8 v0, v0, -0x41

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Frame$StatusFlags;->writeFlags:B

    :goto_0
    return-void
.end method
