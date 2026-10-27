.class public abstract Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected extensions:Lcom/android/carsdk/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/FieldSet<",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 445
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 455
    invoke-static {}, Lcom/android/carsdk/protobuf/FieldSet;->newFieldSet()Lcom/android/carsdk/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    return-void
.end method

.method private verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 596
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    .line 597
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 599
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected extensionsAreInitialized()Z
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public final getExtension(Lcom/android/carsdk/protobuf/ExtensionLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 631
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 633
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 634
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, v1}, Lcom/android/carsdk/protobuf/FieldSet;->getField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 636
    iget-object p1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 638
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/android/carsdk/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 648
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 650
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 651
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 652
    invoke-virtual {v0, v1, p2}, Lcom/android/carsdk/protobuf/FieldSet;->getRepeatedField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p2

    .line 651
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/android/carsdk/protobuf/ExtensionLite;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 620
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 622
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 623
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object p1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/android/carsdk/protobuf/ExtensionLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 609
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 611
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 612
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object p1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/FieldSet;->hasField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method protected final makeImmutable()V
    .locals 1

    .line 662
    invoke-super {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 664
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method protected final mergeExtensionFields(Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/FieldSet;->clone()Lcom/android/carsdk/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object p1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/FieldSet;->mergeFrom(Lcom/android/carsdk/protobuf/FieldSet;)V

    return-void
.end method

.method protected newExtensionWriter()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 711
    new-instance v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/android/carsdk/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 714
    new-instance v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/android/carsdk/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-static {p4}, Lcom/android/carsdk/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    .line 483
    invoke-static {p4}, Lcom/android/carsdk/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 487
    invoke-virtual {p3, p1, v1}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/android/carsdk/protobuf/MessageLite;I)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    move v4, v2

    move v0, v3

    goto :goto_0

    .line 494
    :cond_1
    iget-object v4, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 495
    invoke-virtual {v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    move-result-object v4

    .line 494
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/android/carsdk/protobuf/WireFormat$FieldType;Z)I

    move-result v4

    if-ne v0, v4, :cond_2

    move v0, v2

    move v4, v0

    goto :goto_0

    .line 498
    :cond_2
    iget-object v4, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v4, v4, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v4, v4, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    .line 499
    invoke-virtual {v4}, Lcom/android/carsdk/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 501
    invoke-virtual {v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    move-result-object v4

    .line 500
    invoke-static {v4, v3}, Lcom/android/carsdk/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/android/carsdk/protobuf/WireFormat$FieldType;Z)I

    move-result v4

    if-ne v0, v4, :cond_0

    move v0, v2

    move v4, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 509
    invoke-virtual {p0, p4, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(ILcom/android/carsdk/protobuf/CodedInputStream;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v4, :cond_7

    .line 513
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p3

    .line 514
    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p3

    .line 515
    iget-object p4, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    move-result-object p4

    sget-object v0, Lcom/android/carsdk/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    if-ne p4, v0, :cond_5

    .line 516
    :goto_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_6

    .line 517
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p4

    .line 518
    iget-object v0, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 519
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/carsdk/protobuf/Internal$EnumLite;

    move-result-object p4

    if-nez p4, :cond_4

    return v3

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 526
    invoke-virtual {p1, p4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 525
    invoke-virtual {v0, v1, p4}, Lcom/android/carsdk/protobuf/FieldSet;->addRepeatedField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 529
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p4

    if-lez p4, :cond_6

    .line 530
    iget-object p4, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 532
    invoke-virtual {p4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    move-result-object p4

    .line 531
    invoke-static {p2, p4, v2}, Lcom/android/carsdk/protobuf/FieldSet;->readPrimitiveField(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p4

    .line 534
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, v1, p4}, Lcom/android/carsdk/protobuf/FieldSet;->addRepeatedField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 537
    :cond_6
    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_5

    .line 540
    :cond_7
    sget-object p4, Lcom/android/carsdk/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v0, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/android/carsdk/protobuf/WireFormat$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v0

    aget p4, p4, v0

    if-eq p4, v3, :cond_a

    const/4 p3, 0x2

    if-eq p4, p3, :cond_8

    .line 576
    iget-object p3, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 577
    invoke-virtual {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    move-result-object p3

    .line 576
    invoke-static {p2, p3, v2}, Lcom/android/carsdk/protobuf/FieldSet;->readPrimitiveField(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p2

    goto :goto_4

    .line 565
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p2

    .line 566
    iget-object p3, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    move-result-object p3

    .line 567
    invoke-interface {p3, p2}, Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/carsdk/protobuf/Internal$EnumLite;

    move-result-object p3

    if-nez p3, :cond_9

    .line 571
    invoke-virtual {p0, v1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeVarintField(II)V

    return v3

    :cond_9
    move-object p2, p3

    goto :goto_4

    :cond_a
    const/4 p4, 0x0

    .line 543
    iget-object v0, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_b

    .line 544
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 545
    invoke-virtual {v0, v1}, Lcom/android/carsdk/protobuf/FieldSet;->getField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/MessageLite;

    if-eqz v0, :cond_b

    .line 547
    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MessageLite;->toBuilder()Lcom/android/carsdk/protobuf/MessageLite$Builder;

    move-result-object p4

    :cond_b
    if-nez p4, :cond_c

    .line 551
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p4

    .line 552
    invoke-interface {p4}, Lcom/android/carsdk/protobuf/MessageLite;->newBuilderForType()Lcom/android/carsdk/protobuf/MessageLite$Builder;

    move-result-object p4

    .line 554
    :cond_c
    iget-object v0, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v1, Lcom/android/carsdk/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    if-ne v0, v1, :cond_d

    .line 556
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v0

    invoke-virtual {p2, v0, p4, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readGroup(ILcom/android/carsdk/protobuf/MessageLite$Builder;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)V

    goto :goto_3

    .line 559
    :cond_d
    invoke-virtual {p2, p4, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/MessageLite$Builder;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)V

    .line 561
    :goto_3
    invoke-interface {p4}, Lcom/android/carsdk/protobuf/MessageLite$Builder;->build()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p2

    .line 582
    :goto_4
    iget-object p3, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 583
    iget-object p3, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object p4, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 584
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 583
    invoke-virtual {p3, p4, p1}, Lcom/android/carsdk/protobuf/FieldSet;->addRepeatedField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_5

    .line 586
    :cond_e
    iget-object p3, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object p4, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 587
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 586
    invoke-virtual {p3, p4, p1}, Lcom/android/carsdk/protobuf/FieldSet;->setField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_5
    return v3
.end method

.method final visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;",
            "TMessageType;)V"
        }
    .end annotation

    .line 466
    invoke-super {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    .line 467
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object p2, p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-interface {p1, v0, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitExtensions(Lcom/android/carsdk/protobuf/FieldSet;Lcom/android/carsdk/protobuf/FieldSet;)Lcom/android/carsdk/protobuf/FieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    return-void
.end method

.method bridge synthetic visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V
    .locals 0

    .line 445
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method
