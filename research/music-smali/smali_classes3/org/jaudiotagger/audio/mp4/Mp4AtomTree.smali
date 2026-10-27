.class public Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;
.super Ljava/lang/Object;
.source "Mp4AtomTree.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

.field private freeNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private mdatNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private moovBuffer:Ljava/nio/ByteBuffer;

.field private moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

.field private moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private stcoNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private stcos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;"
        }
    .end annotation
.end field

.field private tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private trakNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.mp4"

    .line 58
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/io/RandomAccessFile;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/io/RandomAccessFile;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method


# virtual methods
.method public buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V
    .locals 10

    .line 252
    invoke-virtual {p2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 255
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 258
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v2, v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 261
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 265
    :try_start_0
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/NullBoxIdException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 271
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    throw p2

    .line 281
    :cond_0
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 282
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x8

    if-ge v3, v4, :cond_c

    .line 284
    new-instance v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 287
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 288
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Atom "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " of size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,ends @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 290
    new-instance v4, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v4, v3}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p2, v4}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 293
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 298
    :cond_1
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 302
    :cond_2
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->HDLR:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 306
    :cond_3
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->HDLR:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 308
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 310
    :cond_4
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TAGS:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 312
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 314
    :cond_5
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 316
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v6, v3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 319
    :cond_6
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 321
    invoke-virtual {p2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v5, :cond_9

    .line 324
    invoke-virtual {v5}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v5, :cond_9

    .line 327
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 329
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto :goto_4

    .line 334
    :cond_7
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 337
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 339
    :cond_8
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 342
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_9
    :goto_4
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 347
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 348
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 349
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 350
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 351
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 352
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 354
    :cond_a
    invoke-virtual {p0, p1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V

    .line 357
    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    .line 361
    :cond_c
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public buildTree(Ljava/io/RandomAccessFile;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    .locals 9

    .line 100
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v0, 0x0

    .line 103
    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 106
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 107
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v0, v1}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;-><init>(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    const/16 v0, 0x8

    .line 110
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    :goto_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_a

    .line 113
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 115
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 120
    :try_start_2
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Lorg/jaudiotagger/audio/exceptions/NullBoxIdException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 141
    new-instance v6, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v6, v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 148
    iget-object v7, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    iget-object v8, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_2
    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    .line 150
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ADDITIONAL_MOOV_ATOM_AT_END_OF_MP4:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 153
    :cond_2
    iput-object v6, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 154
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 156
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    .line 157
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    .line 158
    iget-object v7, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 161
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 166
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 167
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V

    .line 168
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_3

    .line 163
    :cond_3
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ATOM_LENGTH_LARGER_THAN_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_4
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 175
    :cond_5
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDAT:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 184
    iput-object v6, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 185
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_6
    :goto_3
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v2, v6}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 188
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    iget-object v6, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v6, :cond_8

    move v6, v4

    goto :goto_5

    :cond_8
    move v6, v5

    :goto_5
    and-int/2addr v1, v6

    if-eqz v1, :cond_9

    .line 127
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-direct {v0, v6, v7, v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;-><init>(JJ)V

    .line 128
    new-instance v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v2, v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 130
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->NULL_PADDING_FOUND_AT_END_OF_MP4:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;->getFilePos()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_6

    .line 136
    :cond_9
    throw v0

    .line 190
    :cond_a
    :goto_6
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    .line 203
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_b
    return-object v0

    .line 198
    :cond_c
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    .line 196
    :goto_7
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v1, :cond_e

    if-eqz p2, :cond_d

    .line 203
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 205
    :cond_d
    throw v0

    .line 198
    :cond_e
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 413
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    return-object p1
.end method

.method public getDataTree()Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-object v0
.end method

.method public getFreeNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    return-object v0
.end method

.method public getHdlrWithinMdiaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getHdlrWithinMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getIlstNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMoovBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getMoovHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    return-object v0
.end method

.method public getMoovNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getStcoNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    return-object v0
.end method

.method public getStcos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    return-object v0
.end method

.method public getTagsNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getTrakNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    return-object v0
.end method

.method public getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public printAtomTree()V
    .locals 9

    .line 214
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->preorderEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 216
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 219
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    const-string v4, ""

    .line 223
    :goto_1
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 228
    :cond_1
    instance-of v1, v2, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;

    const-string v3, " ,ends @ "

    const-string v5, " of size:"

    if-eqz v1, :cond_2

    .line 230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Null pad  @ "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Atom "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
